import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';

class RouteErrorPage extends StatelessWidget {
  const RouteErrorPage({this.message, super.key});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.link_off_rounded, size: 56, color: AppColors.warning),
              const SizedBox(height: 18),
              Text(
                'Lien introuvable',
                style: AppTypography.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                message ?? 'Ce lien CampusPulse n’est plus valide.',
                style: AppTypography.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () => context.go(AppRoutes.discover),
                child: const Text('Retour aux événements'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
