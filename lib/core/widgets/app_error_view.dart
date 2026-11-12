import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';

class AppErrorView extends StatelessWidget {
  const AppErrorView({
    required this.message,
    this.title = 'Oups, ça a coincé',
    this.onRetry,
    super.key,
  });

  final String message;
  final String title;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: AppColors.danger.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.wifi_off_rounded, color: AppColors.danger, size: 30),
            ),
            const SizedBox(height: 18),
            Text(title, style: AppTypography.textTheme.titleLarge, textAlign: TextAlign.center),
            const SizedBox(height: 8),
            Text(message, style: AppTypography.textTheme.bodyMedium, textAlign: TextAlign.center),
            if (onRetry != null) ...<Widget>[
              const SizedBox(height: 22),
              SizedBox(
                width: 180,
                child: FilledButton(
                  onPressed: onRetry,
                  child: const Text('Réessayer'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
