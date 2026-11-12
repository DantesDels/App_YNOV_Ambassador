import 'package:flutter/material.dart';

/// Dark, electric palette built for night events and outdoor sport.
abstract final class AppColors {
  static const Color ink = Color(0xFF0A0A12);
  static const Color surface = Color(0xFF13131F);
  static const Color surfaceElevated = Color(0xFF1C1C2B);
  static const Color surfaceMuted = Color(0xFF252538);

  static const Color primary = Color(0xFF7C5CFF);
  static const Color primarySoft = Color(0xFF9B84FF);
  static const Color secondary = Color(0xFFFF4D8D);

  static const Color bde = Color(0xFFFF4D8D);
  static const Color bds = Color(0xFF23D5AB);

  static const Color success = Color(0xFF2ED573);
  static const Color warning = Color(0xFFFFB020);
  static const Color danger = Color(0xFFFF5A5F);

  static const Color textPrimary = Color(0xFFF7F7FB);
  static const Color textSecondary = Color(0xFFA0A0B8);
  static const Color textTertiary = Color(0xFF6C6C85);
  static const Color outline = Color(0xFF2C2C3D);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: <Color>[primary, Color(0xFFB06CFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient bdeGradient = LinearGradient(
    colors: <Color>[Color(0xFFFF4D8D), Color(0xFFFF8A5C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient bdsGradient = LinearGradient(
    colors: <Color>[Color(0xFF23D5AB), Color(0xFF2E9BFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient coverFallback = LinearGradient(
    colors: <Color>[Color(0xFF2B1B4D), Color(0xFF13131F)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const List<Color> avatarPalette = <Color>[
    Color(0xFF7C5CFF),
    Color(0xFFFF4D8D),
    Color(0xFF23D5AB),
    Color(0xFFFFB020),
    Color(0xFF2E9BFF),
    Color(0xFFFF7A45),
  ];
}
