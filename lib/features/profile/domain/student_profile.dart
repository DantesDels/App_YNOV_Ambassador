import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_profile.freezed.dart';

@freezed
abstract class ProfileStats with _$ProfileStats {
  const factory ProfileStats({
    @Default(0) int ticketsCount,
    @Default(0) int eventsAttended,
    @Default(0) int friendsCount,
    @Default(0) int squadsJoined,
  }) = _ProfileStats;

  const ProfileStats._();

  int get loyaltyScore => eventsAttended * 10 + squadsJoined * 15 + friendsCount;
}

@freezed
abstract class StudentProfile with _$StudentProfile {
  const factory StudentProfile({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String schoolName,
    @Default('') String campus,
    @Default('') String bio,
    @Default(<String>[]) List<String> interests,
    @Default(ProfileStats()) ProfileStats stats,
    @Default(false) bool isDiscreet,
    String? avatarUrl,
    DateTime? memberSince,
  }) = _StudentProfile;

  const StudentProfile._();

  String get displayName {
    final String last = lastName.trim();
    return last.isEmpty ? firstName : '$firstName $last';
  }

  String get initials {
    final String first = firstName.trim();
    final String last = lastName.trim();
    final String firstInitial = first.isEmpty ? '' : first.substring(0, 1).toUpperCase();
    final String lastInitial = last.isEmpty ? '' : last.substring(0, 1).toUpperCase();
    return '$firstInitial$lastInitial';
  }
}
