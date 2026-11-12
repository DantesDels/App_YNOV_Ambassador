import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/domain/social_repository.dart';

class GetFriendsUseCase {
  const GetFriendsUseCase(this._repository);

  final SocialRepository _repository;

  Future<Result<List<Friend>>> call() => _repository.fetchFriends();
}
