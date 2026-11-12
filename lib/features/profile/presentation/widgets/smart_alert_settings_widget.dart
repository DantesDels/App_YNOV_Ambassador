import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';

/// Smart alert toggles. The parent owns persistence and surfaces errors.
class SmartAlertSettingsWidget extends StatefulWidget {
  const SmartAlertSettingsWidget({
    required this.settings,
    required this.onChanged,
    this.isSaving = false,
    super.key,
  });

  final NotificationSettings settings;
  final ValueChanged<NotificationSettings> onChanged;
  final bool isSaving;

  @override
  State<SmartAlertSettingsWidget> createState() => _SmartAlertSettingsWidgetState();
}

class _SmartAlertSettingsWidgetState extends State<SmartAlertSettingsWidget> {
  late NotificationSettings _settings = widget.settings;

  @override
  void didUpdateWidget(covariant SmartAlertSettingsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.settings != widget.settings) {
      _settings = widget.settings;
    }
  }

  void _update(NotificationSettings next) {
    setState(() => _settings = next);
    widget.onChanged(next);
  }

  @override
  Widget build(BuildContext context) {
    final NotificationSettings settings = _settings;

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 16, 18, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(
                  Icons.auto_awesome_rounded,
                  color: AppColors.primarySoft,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Alertes intelligentes',
                    style: AppTypography.textTheme.titleLarge,
                  ),
                ),
                if (widget.isSaving)
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
              ],
            ),
            const SizedBox(height: 2),
            Text(
              'Des pings uniquement quand c’est pertinent pour toi.',
              style: AppTypography.textTheme.bodySmall,
            ),
            const SizedBox(height: 8),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Notifications push'),
              subtitle: Text(
                settings.pushEnabled ? 'Activées' : 'Désactivées',
                style: AppTypography.textTheme.bodySmall,
              ),
              value: settings.pushEnabled,
              onChanged: widget.isSaving
                  ? null
                  : (bool value) => _update(settings.copyWith(pushEnabled: value)),
            ),
            _ToggleRow(
              icon: Icons.people_outline_rounded,
              title: 'Activité des potes',
              subtitle: 'Un pote s’inscrit, rejoint un groupe…',
              value: settings.friendActivity && settings.pushEnabled,
              enabled: settings.pushEnabled,
              onChanged: (bool value) =>
                  _update(settings.copyWith(friendActivity: value)),
            ),
            _ToggleRow(
              icon: Icons.event_available_rounded,
              title: 'Rappels d’événements',
              subtitle: 'La veille et le jour J.',
              value: settings.eventReminders && settings.pushEnabled,
              enabled: settings.pushEnabled,
              onChanged: (bool value) =>
                  _update(settings.copyWith(eventReminders: value)),
            ),
            _ToggleRow(
              icon: Icons.diversity_3_rounded,
              title: 'Alertes escouade',
              subtitle: 'Tes places, les liens à partager.',
              value: settings.squadAlerts && settings.pushEnabled,
              enabled: settings.pushEnabled,
              onChanged: (bool value) =>
                  _update(settings.copyWith(squadAlerts: value)),
            ),
            _ToggleRow(
              icon: Icons.location_on_outlined,
              title: 'Alertes géolocalisées',
              subtitle: 'Les plans à côté de toi.',
              value: settings.locationBasedAlerts && settings.pushEnabled,
              enabled: settings.pushEnabled,
              onChanged: (bool value) =>
                  _update(settings.copyWith(locationBasedAlerts: value)),
            ),
            _ToggleRow(
              icon: Icons.psychology_outlined,
              title: 'Alertes intelligentes',
              subtitle: '“3 potes y vont, plus que 12 places”.',
              value: settings.smartAlerts && settings.pushEnabled,
              enabled: settings.pushEnabled,
              onChanged: (bool value) =>
                  _update(settings.copyWith(smartAlerts: value)),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.bedtime_outlined,
                        size: 18,
                        color: AppColors.textTertiary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Heures calmes · ${settings.quietHoursLabel}',
                          style: AppTypography.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  RangeSlider(
                    values: RangeValues(
                      settings.quietHoursStart.toDouble(),
                      settings.quietHoursEnd.toDouble(),
                    ),
                    min: 0,
                    max: 24,
                    divisions: 24,
                    labels: RangeLabels(
                      '${settings.quietHoursStart.toString().padLeft(2, '0')}h',
                      '${settings.quietHoursEnd.toString().padLeft(2, '0')}h',
                    ),
                    onChanged: widget.isSaving
                        ? null
                        : (RangeValues values) {
                            setState(() {
                              _settings = settings.copyWith(
                                quietHoursStart: values.start.round(),
                                quietHoursEnd: values.end.round(),
                              );
                            });
                          },
                    onChangeEnd: widget.isSaving
                        ? null
                        : (RangeValues values) {
                            widget.onChanged(
                              _settings.copyWith(
                                quietHoursStart: values.start.round(),
                                quietHoursEnd: values.end.round(),
                              ),
                            );
                          },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ToggleRow extends StatelessWidget {
  const _ToggleRow({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.enabled,
    required this.onChanged,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool value;
  final bool enabled;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: EdgeInsets.zero,
      secondary: Icon(icon, color: AppColors.textTertiary, size: 20),
      title: Text(title),
      subtitle: Text(subtitle, style: AppTypography.textTheme.bodySmall),
      value: value && enabled,
      onChanged: enabled ? onChanged : null,
    );
  }
}
