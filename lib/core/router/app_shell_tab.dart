import 'package:flutter/material.dart';

enum AppShellTab {
  discover(label: 'Découvrir', icon: Icons.explore_outlined, selectedIcon: Icons.explore_rounded),
  tickets(label: 'Billets', icon: Icons.confirmation_number_outlined, selectedIcon: Icons.confirmation_number_rounded),
  friends(label: 'Potes', icon: Icons.group_outlined, selectedIcon: Icons.group_rounded),
  profile(label: 'Profil', icon: Icons.person_outline_rounded, selectedIcon: Icons.person_rounded);

  const AppShellTab({
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;
}
