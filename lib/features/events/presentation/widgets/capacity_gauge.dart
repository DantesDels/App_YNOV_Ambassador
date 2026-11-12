import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';
import 'package:campus_pulse/core/theme/app_typography.dart';
import 'package:campus_pulse/features/events/domain/event_capacity.dart';

/// Server-authoritative seat gauge. It never estimates availability: it simply
/// renders the numbers returned by the realtime capacity endpoint.
class CapacityGauge extends StatelessWidget {
  const CapacityGauge({
    required this.capacity,
    this.showLabel = true,
    this.compact = false,
    super.key,
  });

  final EventCapacity capacity;
  final bool showLabel;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final Color color = _color;
    final String label = _label;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (showLabel)
          Row(
            children: <Widget>[
              Icon(
                capacity.isSoldOut
                    ? Icons.block_rounded
                    : capacity.isAlmostFull
                        ? Icons.local_fire_department_rounded
                        : Icons.event_seat_rounded,
                size: compact ? 14 : 16,
                color: color,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  label,
                  style: (compact
                          ? AppTypography.textTheme.bodySmall
                          : AppTypography.textTheme.labelMedium)
                      ?.copyWith(color: color, fontWeight: FontWeight.w700),
                ),
              ),
              if (!capacity.isSoldOut)
                Text(
                  '${capacity.fillPercent} %',
                  style: AppTypography.textTheme.labelSmall,
                ),
            ],
          ),
        if (showLabel) SizedBox(height: compact ? 5 : 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: LinearProgressIndicator(
            value: capacity.fillRatio,
            minHeight: compact ? 4 : 7,
            backgroundColor: AppColors.surfaceMuted,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ],
    );
  }

  String get _label {
    if (capacity.isSoldOut) {
      return 'Complet';
    }
    if (capacity.remainingSeats <= 15) {
      return 'Plus que ${capacity.remainingSeats} places';
    }
    return '${capacity.remainingSeats} places restantes';
  }

  Color get _color {
    if (capacity.isSoldOut) {
      return AppColors.danger;
    }
    if (capacity.isAlmostFull) {
      return AppColors.warning;
    }
    return AppColors.bds;
  }
}
