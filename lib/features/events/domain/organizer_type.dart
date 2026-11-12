/// The two student unions allowed to publish on CampusPulse.
///
/// Funds are routed to the matching Stripe Connect account (BDE or BDS), so the
/// value is part of the public API contract.
enum OrganizerType {
  bde(
    label: 'BDE',
    longLabel: 'Bureau des Élèves',
    apiValue: 'bde',
  ),
  bds(
    label: 'BDS',
    longLabel: 'Bureau des Sports',
    apiValue: 'bds',
  );

  const OrganizerType({
    required this.label,
    required this.longLabel,
    required this.apiValue,
  });

  final String label;
  final String longLabel;
  final String apiValue;

  bool get isBde => this == OrganizerType.bde;

  static OrganizerType fromApi(String? value) {
    return OrganizerType.values.firstWhere(
      (OrganizerType type) => type.apiValue == value?.toLowerCase(),
      orElse: () => OrganizerType.bde,
    );
  }
}
