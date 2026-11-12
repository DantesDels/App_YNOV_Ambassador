import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:campus_pulse/features/events/domain/organizer_type.dart';

part 'membership.freezed.dart';

/// BDE/BDS membership displayed on the profile. Visibility is opt-in so a
/// student can keep their union affiliation private.
@freezed
abstract class Membership with _$Membership {
  const factory Membership({
    required OrganizerType organizer,
    required bool isActive,
    required DateTime memberSince,
    @Default(false) bool isPublic,
    @Default(<String>[]) List<String> perks,
    String? memberNumber,
  }) = _Membership;

  const Membership._();

  String get label => '${organizer.label} · ${organizer.longLabel}';

  String get statusLabel => isActive ? 'Membre actif' : 'Ancien membre';

  int get yearsOfMembership {
    final Duration age = DateTime.now().difference(memberSince);
    final int years = (age.inDays / 365).floor();
    return years < 0 ? 0 : years;
  }
}
