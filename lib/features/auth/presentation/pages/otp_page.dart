import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/constants/deep_link_schema.dart';
import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/core/utils/formatters.dart';
import 'package:campus_pulse/core/widgets/app_primary_button.dart';
import 'package:campus_pulse/features/auth/presentation/models/auth_flow_state.dart';
import 'package:campus_pulse/features/auth/presentation/providers/auth_providers.dart';

class OtpPage extends ConsumerStatefulWidget {
  const OtpPage({super.key});

  @override
  ConsumerState<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends ConsumerState<OtpPage> {
  final TextEditingController _codeController = TextEditingController();
  Timer? _ticker;
  int _secondsLeft = 0;
  int _resendLeft = 0;

  @override
  void initState() {
    super.initState();
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
    _restartTimers();
  }

  @override
  void dispose() {
    _ticker?.cancel();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AuthFlowState state = ref.watch(authFlowControllerProvider);
    final String email = state.email.isEmpty ? 'ton adresse étudiante' : state.email;
    final bool canResend = _resendLeft == 0 && !state.isSubmitting;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go(AppRoutes.login),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(26, 8, 26, 30),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.14),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Icon(
                    Icons.mark_email_read_outlined,
                    color: AppColors.primarySoft,
                    size: 29,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Vérifie ta boîte mail',
                  style: AppTypography.textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    text: 'On a envoyé un code à 6 chiffres à ',
                    children: <InlineSpan>[
                      TextSpan(
                        text: email,
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const TextSpan(text: '.'),
                    ],
                  ),
                  style: AppTypography.textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                if (state.challenge != null) ...<Widget>[
                  const SizedBox(height: 10),
                  Text(
                    'Le code expire dans ${Formatters.countdown(Duration(seconds: _secondsLeft))}.',
                    style: AppTypography.textTheme.bodySmall,
                  ),
                ],
                const SizedBox(height: 28),
                TextField(
                  controller: _codeController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 6,
                  autofocus: true,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  style: AppTypography.textTheme.displaySmall?.copyWith(
                    letterSpacing: 14,
                    fontSize: 30,
                  ),
                  onChanged: (_) => ref
                      .read(authFlowControllerProvider.notifier)
                      .clearError(),
                  onSubmitted: (_) => _verify(state),
                  decoration: const InputDecoration(
                    counterText: '',
                    hintText: '••••••',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 22,
                    ),
                  ),
                ),
                if (state.errorMessage != null) ...<Widget>[
                  const SizedBox(height: 10),
                  Text(
                    state.errorMessage!,
                    style: AppTypography.textTheme.bodySmall?.copyWith(
                      color: AppColors.danger,
                    ),
                  ),
                ],
                if (AppConfig.useMockBackend) ...<Widget>[
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceElevated,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.outline),
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.science_outlined,
                          size: 18,
                          color: AppColors.warning,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Mode démo : utilise le code 123456.',
                            style: AppTypography.textTheme.bodySmall?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 24),
                AppPrimaryButton(
                  label: 'Vérifier mon code',
                  icon: Icons.lock_open_rounded,
                  isLoading: state.isSubmitting,
                  onPressed: () => _verify(state),
                ),
                const SizedBox(height: 12),
                Center(
                  child: TextButton(
                    onPressed: canResend ? () => _resend(state) : null,
                    child: Text(
                      canResend
                          ? 'Renvoyer un code'
                          : 'Renvoyer dans ${_resendLeft}s',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _tick() {
    if (!mounted) {
      return;
    }
    setState(() {
      if (_secondsLeft > 0) {
        _secondsLeft--;
      }
      if (_resendLeft > 0) {
        _resendLeft--;
      }
    });
  }

  void _restartTimers() {
    final challenge = ref.read(authFlowControllerProvider).challenge;
    if (challenge == null) {
      return;
    }
    _secondsLeft = challenge.remaining.inSeconds;
    _resendLeft = challenge.resendCooldown.inSeconds;
  }

  Future<void> _verify(AuthFlowState state) async {
    if (state.isSubmitting || _codeController.text.length != 6) {
      return;
    }
    final bool verified = await ref
        .read(authFlowControllerProvider.notifier)
        .verifyOtp(_codeController.text);
    if (!mounted) {
      return;
    }
    if (verified) {
      context.go(AppRoutes.discover);
    }
  }

  Future<void> _resend(AuthFlowState state) async {
    final String email = state.email.isNotEmpty
        ? state.email
        : 'lea.martin@${AppConfig.schoolEmailDomain}';
    final bool sent = await ref
        .read(authFlowControllerProvider.notifier)
        .requestOtp(email);
    if (!mounted) {
      return;
    }
    if (sent) {
      _codeController.clear();
      _restartTimers();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nouveau code envoyé.')),
      );
    }
  }
}
