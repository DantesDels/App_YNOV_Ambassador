import 'package:flutter/material.dart';

import 'package:campus_pulse/core/theme/app_colors.dart';

/// Overlapping avatar pile used for the "social proof" graph.
class AppAvatar extends StatelessWidget {
  const AppAvatar({
    required this.firstName,
    this.lastName,
    this.imageUrl,
    this.radius = 18,
    this.borderColor = AppColors.surface,
    this.borderWidth = 2,
    super.key,
  });

  final String firstName;
  final String? lastName;
  final String? imageUrl;
  final double radius;
  final Color borderColor;
  final double borderWidth;

  static const List<Color> _palette = AppColors.avatarPalette;

  @override
  Widget build(BuildContext context) {
    final String initials = _initials;
    final Color background = _palette[firstName.hashCode.abs() % _palette.length];
    final String? url = imageUrl;

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: background,
        foregroundImage: url != null && url.isNotEmpty ? NetworkImage(url) : null,
        onForegroundImageError: url != null && url.isNotEmpty ? (Object _, StackTrace? _) {} : null,
        child: Text(
          initials,
          style: TextStyle(
            fontSize: radius * 0.72,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  String get _initials {
    final String first = firstName.trim();
    final String last = (lastName ?? '').trim();
    final String firstInitial = first.isEmpty ? '?' : first.substring(0, 1).toUpperCase();
    final String lastInitial = last.isEmpty ? '' : last.substring(0, 1).toUpperCase();
    return '$firstInitial$lastInitial';
  }
}
