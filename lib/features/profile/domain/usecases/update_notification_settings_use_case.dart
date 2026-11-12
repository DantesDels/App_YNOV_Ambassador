import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/profile/domain/notification_settings.dart';
import 'package:campus_pulse/features/profile/domain/profile_repository.dart';

class UpdateNotificationSettingsUseCase {
  const UpdateNotificationSettingsUseCase(this._repository);

  final ProfileRepository _repository;

  Future<Result<NotificationSettings>> call(NotificationSettings settings) {
    return _repository.updateNotificationSettings(settings);
  }
}
