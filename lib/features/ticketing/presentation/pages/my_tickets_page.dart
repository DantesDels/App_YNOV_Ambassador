import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/errors/error_display.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/widgets/app_empty_state.dart';
import 'package:campus_pulse/core/widgets/app_error_view.dart';
import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/data/providers/ticketing_data_providers.dart';
import 'package:campus_pulse/features/ticketing/presentation/providers/ticketing_providers.dart';
import 'package:campus_pulse/features/ticketing/presentation/widgets/ticket_card.dart';

class MyTicketsPage extends ConsumerWidget {
  const MyTicketsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Ticket>> tickets = ref.watch(myTicketsControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => ref.read(myTicketsControllerProvider.notifier).refresh(),
          child: tickets.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (Object error, StackTrace stackTrace) => AppErrorView(
              message: userMessageOf(error),
              onRetry: () => ref.invalidate(myTicketsControllerProvider),
            ),
            data: (List<Ticket> list) {
              if (list.isEmpty) {
                return ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(24),
                  children: <Widget>[
                    const SizedBox(height: 80),
                    AppEmptyState(
                      title: 'Aucun billet pour le moment',
                      message: 'Tes prochains événements apparaîtront ici, même hors ligne.',
                      icon: Icons.confirmation_number_outlined,
                      actionLabel: 'Découvrir les événements',
                      onAction: () => context.go(AppRoutes.discover),
                    ),
                  ],
                );
              }

              final List<Ticket> upcoming = list
                  .where((Ticket ticket) =>
                      ticket.isUpcoming && ticket.status == TicketStatus.valid)
                  .toList(growable: false);
              final List<Ticket> past = list
                  .where((Ticket ticket) =>
                      !(ticket.isUpcoming && ticket.status == TicketStatus.valid))
                  .toList(growable: false);

              return CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 16, 20, 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Mes billets',
                                style: AppTypography.textTheme.headlineMedium,
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.surfaceElevated,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColors.outline),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.offline_bolt_rounded,
                                      size: 14,
                                      color: AppColors.bds,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Disponibles hors ligne',
                                      style: AppTypography.textTheme.labelSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${list.length} billet${list.length > 1 ? 's' : ''} · ${upcoming.length} à venir',
                            style: AppTypography.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (upcoming.isNotEmpty) ...<Widget>[
                    _SectionHeader(title: 'À venir'),
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                      sliver: SliverList.builder(
                        itemCount: upcoming.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Ticket ticket = upcoming[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 14),
                            child: TicketCard(
                              ticket: ticket,
                              onOpenQr: () => context.push(
                                AppRoutes.qrTicket(ticket.id),
                              ),
                              onAddToWallet: () => _addToWallet(ref, context, ticket),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                  if (past.isNotEmpty) ...<Widget>[
                    _SectionHeader(title: 'Historique'),
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
                      sliver: SliverList.builder(
                        itemCount: past.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Ticket ticket = past[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 14),
                            child: TicketCard(
                              ticket: ticket,
                              onOpenQr: () => context.push(
                                AppRoutes.qrTicket(ticket.id),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _addToWallet(
    WidgetRef ref,
    BuildContext context,
    Ticket ticket,
  ) async {
    final result = await ref.read(exportAppleWalletPassUseCaseProvider)(ticket.id);
    if (!context.mounted) {
      return;
    }
    result.fold(
      onSuccess: (List<int> bytes) {
        unawaited(
          ref
              .read(walletExportServiceProvider)
              .saveApplePass(bytes: bytes, ticketId: ticket.id)
              .then((file) async {
                await ref.read(walletExportServiceProvider).shareApplePass(
                      file,
                      ticketLabel: ticket.shortCode,
                    );
              }),
        );
      },
      onFailure: (Failure failure) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(failure.userMessage)));
      },
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 8),
        child: Text(
          title,
          style: AppTypography.textTheme.titleMedium,
        ),
      ),
    );
  }
}
