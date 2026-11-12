import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/errors/error_display.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/presentation/providers/social_providers.dart';

class AddFriendQrScannerPage extends ConsumerStatefulWidget {
  const AddFriendQrScannerPage({
    this.prefilledFriendId,
    this.prefilledToken,
    super.key,
  });

  final String? prefilledFriendId;
  final String? prefilledToken;

  @override
  ConsumerState<AddFriendQrScannerPage> createState() =>
      _AddFriendQrScannerPageState();
}

class _AddFriendQrScannerPageState
    extends ConsumerState<AddFriendQrScannerPage> {
  bool _isProcessing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addFriendControllerProvider.notifier).reset();
      if (widget.prefilledFriendId != null &&
          widget.prefilledFriendId!.isNotEmpty &&
          widget.prefilledToken != null &&
          widget.prefilledToken!.isNotEmpty) {
        final String payload = AppRoutes.friendQrPayload(
          friendId: widget.prefilledFriendId!,
          token: widget.prefilledToken!,
        );
        unawaited(_handlePayload(payload));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<Friend?> state = ref.watch(addFriendControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Ajouter un pote')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: state.when(
                  loading: () => _ScannerSurface(
                    onDetect: _isProcessing ? null : _handleCapture,
                    overlay: const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
                  ),
                  error: (Object error, StackTrace stackTrace) => _ScannerSurface(
                    onDetect: _isProcessing ? null : _handleCapture,
                    overlay: _ResultCard(
                      icon: Icons.error_outline_rounded,
                      color: AppColors.danger,
                      title: 'Invitation invalide',
                      message: userMessageOf(error),
                      actionLabel: 'Scanner à nouveau',
                      onAction: () {
                        ref.read(addFriendControllerProvider.notifier).reset();
                        setState(() => _isProcessing = false);
                      },
                    ),
                  ),
                  data: (Friend? friend) {
                    if (friend != null) {
                      return _ScannerSurface(
                        onDetect: null,
                        overlay: _ResultCard(
                          icon: Icons.check_circle_rounded,
                          color: AppColors.success,
                          title: 'Pote ajouté',
                          message:
                              '${friend.displayName} fait maintenant partie de ton cercle.',
                          actionLabel: 'Retour aux potes',
                          onAction: () => context.go(AppRoutes.friends),
                        ),
                      );
                    }
                    return _ScannerSurface(
                      onDetect: _isProcessing ? null : _handleCapture,
                      overlay: _ScanHint(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              if (AppConfig.useMockBackend && state.value == null) ...<Widget>[
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: _isProcessing
                        ? null
                        : () => unawaited(
                              _handlePayload(
                                AppRoutes.friendQrPayload(
                                  friendId: 'friend-demo',
                                  token: 'demo-token',
                                ),
                              ),
                            ),
                    icon: const Icon(Icons.science_outlined, size: 18),
                    label: const Text('Simuler un scan démo'),
                  ),
                ),
                const SizedBox(height: 10),
              ],
              Text(
                'Le QR d’un pote contient une invitation signée. '
                'Aucune donnée personnelle n’est partagée en clair.',
                style: AppTypography.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleCapture(BarcodeCapture capture) async {
    final String? raw = capture.barcodes
        .map((Barcode barcode) => barcode.rawValue)
        .firstWhere((String? value) => value != null && value.isNotEmpty, orElse: () => null);
    if (raw == null) {
      return;
    }
    await _handlePayload(raw);
  }

  Future<void> _handlePayload(String payload) async {
    if (_isProcessing) {
      return;
    }
    setState(() => _isProcessing = true);
    try {
      final Friend? friend = await ref
          .read(addFriendControllerProvider.notifier)
          .scan(payload);
      if (friend != null && mounted) {
        await Clipboard.setData(ClipboardData(text: friend.displayName));
      }
    } finally {
      if (mounted) {
        setState(() => _isProcessing = false);
      }
    }
  }
}

class _ScannerSurface extends StatelessWidget {
  const _ScannerSurface({required this.onDetect, this.overlay});

  final void Function(BarcodeCapture capture)? onDetect;
  final Widget? overlay;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          MobileScanner(
            onDetect: onDetect,
            errorBuilder: (BuildContext context, MobileScannerException error) {
              return Center(
                child: Text(
                  error.errorCode.name,
                  style: AppTypography.textTheme.bodyMedium,
                ),
              );
            },
          ),
          if (overlay != null) ...<Widget>[
            Container(color: Colors.black.withValues(alpha: 0.45)),
            Center(child: overlay),
          ],
          Positioned.fill(
            child: IgnorePointer(
              child: CustomPaint(
                painter: _ScannerFramePainter(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ScanHint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(Icons.qr_code_scanner_rounded, size: 40, color: AppColors.primarySoft),
          const SizedBox(height: 10),
          Text(
            'Scanne le QR d’un pote',
            style: AppTypography.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            'Son invitation CampusPulse apparaîtra automatiquement.',
            style: AppTypography.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ResultCard extends StatelessWidget {
  const _ResultCard({
    required this.icon,
    required this.color,
    required this.title,
    required this.message,
    required this.actionLabel,
    required this.onAction,
  });

  final IconData icon;
  final Color color;
  final String title;
  final String message;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: color.withValues(alpha: 0.5)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, color: color, size: 46),
          const SizedBox(height: 12),
          Text(title, style: AppTypography.textTheme.titleLarge, textAlign: TextAlign.center),
          const SizedBox(height: 6),
          Text(message, style: AppTypography.textTheme.bodySmall, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onAction,
              style: FilledButton.styleFrom(backgroundColor: color),
              child: Text(actionLabel),
            ),
          ),
        ],
      ),
    );
  }
}

class _ScannerFramePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect scanRect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.shortestSide * 0.62,
      height: size.shortestSide * 0.62,
    );
    final Paint line = Paint()
      ..color = AppColors.primarySoft
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    const double cornerLength = 26;

    void drawCorner(Offset start, Offset end) {
      canvas.drawLine(start, end, line);
    }

    drawCorner(scanRect.topLeft, scanRect.topLeft + const Offset(cornerLength, 0));
    drawCorner(scanRect.topLeft, scanRect.topLeft + const Offset(0, cornerLength));
    drawCorner(scanRect.topRight, scanRect.topRight + const Offset(-cornerLength, 0));
    drawCorner(scanRect.topRight, scanRect.topRight + const Offset(0, cornerLength));
    drawCorner(scanRect.bottomLeft, scanRect.bottomLeft + const Offset(cornerLength, 0));
    drawCorner(scanRect.bottomLeft, scanRect.bottomLeft + const Offset(0, -cornerLength));
    drawCorner(scanRect.bottomRight, scanRect.bottomRight + const Offset(-cornerLength, 0));
    drawCorner(scanRect.bottomRight, scanRect.bottomRight + const Offset(0, -cornerLength));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
