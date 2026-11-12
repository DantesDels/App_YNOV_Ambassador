import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/features/events/domain/organizer_type.dart';
import 'package:campus_pulse/features/profile/data/providers/profile_data_providers.dart';
import 'package:campus_pulse/features/profile/domain/membership.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';
import 'package:campus_pulse/features/profile/domain/student_profile.dart';
import 'package:campus_pulse/features/profile/domain/usecases/get_memberships_use_case.dart';
import 'package:campus_pulse/features/profile/domain/usecases/get_profile_use_case.dart';
import 'package:campus_pulse/features/profile/domain/usecases/set_membership_visibility_use_case.dart';
import 'package:campus_pulse/features/profile/domain/usecases/toggle_discreet_mode_use_case.dart';
import 'package:campus_pulse/features/profile/domain/usecases/update_notification_settings_use_case.dart';

part 'profile_providers.g.dart';

@Riverpod(keepAlive: true)
GetProfileUseCase getProfileUseCase(Ref ref) =>
    GetProfileUseCase(ref.watch(profileRepositoryProvider));

@Riverpod(keepAlive: true)
GetMembershipsUseCase getMembershipsUseCase(Ref ref) =>
    GetMembershipsUseCase(ref.watch(profileRepositoryProvider));

@Riverpod(keepAlive: true)
SetMembershipVisibilityUseCase setMembershipVisibilityUseCase(Ref ref) =>
    SetMembershipVisibilityUseCase(ref.watch(profileRepositoryProvider));

@Riverpod(keepAlive: true)
ToggleDiscreetModeUseCase toggleDiscreetModeUseCase(Ref ref) =>
    ToggleDiscreetModeUseCase(ref.watch(profileRepositoryProvider));

@Riverpod(keepAlive: true)
UpdateNotificationSettingsUseCase updateNotificationSettingsUseCase(Ref ref) =>
    UpdateNotificationSettingsUseCase(ref.watch(profileRepositoryProvider));

@Riverpod(keepAlive: true)
class ProfileController extends _$ProfileController {
  @override
  Future<StudentProfile> build() => _fetch();

  Future<void> refresh() async {
    state = const AsyncLoading<StudentProfile>();
    state = await AsyncValue.guard(_fetch);
  }

  Future<String?> setDiscreet(bool enabled) async {
    final result = await ref.read(toggleDiscreetModeUseCaseProvider)(enabled);
    return result.fold(
      onSuccess: (StudentProfile profile) {
        state = AsyncData<StudentProfile>(profile);
        return null;
      },
      onFailure: (failure) => failure.userMessage,
    );
  }

  Future<StudentProfile> _fetch() async {
    final result = await ref.read(getProfileUseCaseProvider)();
    return result.fold(
      onSuccess: (StudentProfile profile) => profile,
      onFailure: (failure) => throw FailureException(failure),
    );
  }
}

@Riverpod(keepAlive: true)
class MembershipsController extends _$MembershipsController {
  @override
  Future<List<Membership>> build() => _fetch();

  Future<void> refresh() async {
    state = const AsyncLoading<List<Membership>>();
    state = await AsyncValue.guard(_fetch);
  }

  Future<String?> setVisibility({
    required OrganizerType organizer,
    required bool isPublic,
  }) async {
    final result = await ref.read(setMembershipVisibilityUseCaseProvider)(
      organizer: organizer,
      isPublic: isPublic,
    );
    return result.fold(
      onSuccess: (Membership updated) {
        final List<Membership> current = state.value ?? const <Membership>[];
        state = AsyncData<List<Membership>>(
          current
              .map(
                (Membership membership) => membership.organizer == organizer
                    ? updated
                    : membership,
              )
              .toList(growable: false),
        );
        return null;
      },
      onFailure: (failure) => failure.userMessage,
    );
  }

  Future<List<Membership>> _fetch() async {
    final result = await ref.read(getMembershipsUseCaseProvider)();
    return result.fold(
      onSuccess: (List<Membership> memberships) => memberships,
      onFailure: (failure) => throw FailureException(failure),
    );
  }
}

@Riverpod(keepAlive: true)
class NotificationSettingsController extends _$NotificationSettingsController {
  @override
  Future<NotificationSettings> build() async {
    final repository = ref.read(profileRepositoryProvider);
    final result = await repository.fetchNotificationSettings();
    return result.fold(
      onSuccess: (NotificationSettings settings) => settings,
      onFailure: (failure) => throw FailureException(failure),
    );
  }

  Future<String?> save(NotificationSettings settings) async {
    final result = await ref.read(updateNotificationSettingsUseCaseProvider)(settings);
    return result.fold(
      onSuccess: (NotificationSettings updated) {
        state = AsyncData<NotificationSettings>(updated);
        return null;
      },
      onFailure: (failure) => failure.userMessage,
    );
  }
}
