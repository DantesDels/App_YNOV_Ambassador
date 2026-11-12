import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/widgets/app_avatar.dart';
import 'package:campus_pulse/core/widgets/app_empty_state.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/presentation/providers/social_providers.dart';

class FriendsPage extends ConsumerStatefulWidget {
  const FriendsPage({super.key});

  @override
  ConsumerState<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends ConsumerState<FriendsPage> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Friend>> friends = ref.watch(friendsControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tes potes'),
        actions: <Widget>[
          IconButton(
            onPressed: () => context.push(AppRoutes.addFriend),
            tooltip: 'Ajouter un pote',
            icon: const Icon(Icons.person_add_alt_1_rounded),
          ),
        ],
      ),
      body: friends.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object error, StackTrace stackTrace) => Center(
          child: Text(
            error.toString(),
            style: AppTypography.textTheme.bodyMedium,
          ),
        ),
        data: (List<Friend> list) {
          final List<Friend> filtered = _query.trim().isEmpty
              ? list
              : list
                  .where(
                    (Friend friend) => friend.displayName
                        .toLowerCase()
                        .contains(_query.trim().toLowerCase()),
                  )
                  .toList(growable: false);
          return RefreshIndicator(
            onRefresh: () => ref.read(friendsControllerProvider.notifier).refresh(),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${list.length} potes sur CampusPulse',
                          style: AppTypography.textTheme.bodySmall,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: _searchController,
                          onChanged: (String value) => setState(() => _query = value),
                          decoration: const InputDecoration(
                            hintText: 'Rechercher un pote…',
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: AppColors.textTertiary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (filtered.isEmpty)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: AppEmptyState(
                      title: 'Aucun pote trouvé',
                      message: 'Scanne le QR d’un étudiant pour l’ajouter.',
                      icon: Icons.group_outlined,
                      actionLabel: 'Ajouter un pote',
                      onAction: () => context.push(AppRoutes.addFriend),
                    ),
                  )
                else
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
                    sliver: SliverList.builder(
                      itemCount: filtered.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Friend friend = filtered[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Card(
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 6,
                              ),
                              leading: AppAvatar(
                                firstName: friend.firstName,
                                lastName: friend.lastName,
                                imageUrl: friend.avatarUrl,
                                radius: 22,
                              ),
                              title: Text(friend.displayName),
                              subtitle: Text(
                                '${friend.statusLabel} · ${friend.sharedEvents} événements en commun',
                                style: AppTypography.textTheme.bodySmall,
                              ),
                              trailing: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: friend.isOnline
                                      ? AppColors.success
                                      : AppColors.textTertiary,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
