import 'package:campus_pulse/features/social/domain/activity_item.dart';
import 'package:campus_pulse/features/social/domain/social_repository.dart';

class WatchActivityUseCase {
  const WatchActivityUseCase(this._repository);

  final SocialRepository _repository;

  Stream<ActivityItem> call() => _repository.watchActivity();
}
