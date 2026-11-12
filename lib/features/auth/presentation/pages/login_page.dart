import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/widgets/app_primary_button.dart';
import 'package:campus_pulse/features/auth/domain/school_email.dart';
import 'package:campus_pulse/features/auth/domain/sso_provider.dart';
import 'package:campus_pulse/features/auth/presentation/providers/auth_providers.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isSubmitting = ref.watch(
      authFlowControllerProvider.select((state) => state.isSubmitting),
    );
    final String? errorMessage = ref.watch(
      authFlowControllerProvider.select((state) => state.errorMessage),
    );

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFF191231), AppColors.ink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 28),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 460),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          gradient: AppColors.primaryGradient,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.bolt_rounded,
                          color: Colors.white,
                          size: 34,
                        ),
                      ),
                      const SizedBox(height: 28),
                      Text(
                        'Bienvenue sur\nCampusPulse',
                        style: AppTypography.textTheme.displaySmall,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Connecte-toi avec ton adresse étudiante pour voir les plans du BDE et du BDS.',
                        style: AppTypography.textTheme.bodyLarge?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        autocorrect: false,
                        onChanged: (_) => ref
                            .read(authFlowControllerProvider.notifier)
                            .clearError(),
                        onFieldSubmitted: (_) => _requestOtp(isSubmitting),
                        validator: (String? value) {
                          final SchoolEmailValidation validation =
                              SchoolEmail.validate(
                            value ?? '',
                            allowedDomain: AppConfig.schoolEmailDomain,
                          );
                          return switch (validation) {
                            ValidSchoolEmail() => null,
                            InvalidSchoolEmail(:final String message) => message,
                          };
                        },
                        decoration: InputDecoration(
                          labelText: 'Adresse étudiante',
                          hintText: 'prenom.nom@${AppConfig.schoolEmailDomain}',
                          prefixIcon: const Icon(
                            Icons.alternate_email_rounded,
                            color: AppColors.textTertiary,
                          ),
                        ),
                      ),
                      if (errorMessage != null) ...<Widget>[
                        const SizedBox(height: 12),
                        Text(
                          errorMessage,
                          style: AppTypography.textTheme.bodySmall?.copyWith(
                            color: AppColors.danger,
                          ),
                        ),
                      ],
                      const SizedBox(height: 22),
                      AppPrimaryButton(
                        label: 'Recevoir mon code',
                        icon: Icons.arrow_forward_rounded,
                        isLoading: isSubmitting,
                        onPressed: () => _requestOtp(isSubmitting),
                      ),
                      if (AppConfig.useMockBackend) ...<Widget>[
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton.icon(
                            onPressed: isSubmitting
                                ? null
                                : () {
                                    _emailController.text =
                                        'lea.martin@${AppConfig.schoolEmailDomain}';
                                    ref
                                        .read(authFlowControllerProvider.notifier)
                                        .clearError();
                                  },
                            icon: const Icon(Icons.science_outlined, size: 18),
                            label: const Text('Remplir le compte démo'),
                          ),
                        ),
                      ],
                      const SizedBox(height: 30),
                      Row(
                        children: <Widget>[
                          const Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'ou continue avec',
                              style: AppTypography.textTheme.bodySmall,
                            ),
                          ),
                          const Expanded(child: Divider()),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: _SsoButton(
                              label: SsoProvider.google.label,
                              icon: Icons.g_mobiledata_rounded,
                              onPressed: isSubmitting
                                  ? null
                                  : () => _signInWithSso(SsoProvider.google),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _SsoButton(
                              label: SsoProvider.apple.label,
                              icon: Icons.apple_rounded,
                              onPressed: isSubmitting
                                  ? null
                                  : () => _signInWithSso(SsoProvider.apple),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Icon(
                            Icons.shield_outlined,
                            size: 16,
                            color: AppColors.textTertiary,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Réservé aux étudiants vérifiés. Tes données restent '
                              'sur ton appareil et sur nos serveurs européens.',
                              style: AppTypography.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _requestOtp(bool isSubmitting) async {
    if (isSubmitting || !(_formKey.currentState?.validate() ?? false)) {
      return;
    }
    final bool sent = await ref
        .read(authFlowControllerProvider.notifier)
        .requestOtp(_emailController.text);
    if (!mounted || !sent) {
      return;
    }
    context.go(AppRoutes.otp);
  }

  Future<void> _signInWithSso(SsoProvider provider) async {
    final bool signedIn = await ref
        .read(authFlowControllerProvider.notifier)
        .signInWithSso(provider);
    if (!mounted) {
      return;
    }
    if (signedIn) {
      context.go(AppRoutes.discover);
    }
  }
}

/// Local visual helper kept private: it is not part of the public widget API.
class _SsoButton extends StatelessWidget {
  const _SsoButton({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  final String label;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 22),
      label: Text(label),
    );
  }
}
