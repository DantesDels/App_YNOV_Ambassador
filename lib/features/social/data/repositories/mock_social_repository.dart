import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/core/mock/mock_campus_store.dart';
import 'package:campus_pulse/features/social/domain/activity_item.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/domain/social_repository.dart';

class MockSocialRepository implements SocialRepository {
  const MockSocialRepository(this._store);

  final MockCampusStore _store;

  @override
  Future<Result<List<Friend>>> fetchFriends() async {
    await Future<void>.delayed(const Duration(milliseconds: 320));
    return Success<List<Friend>>(_store.friends);
  }

  @override
  Future<Result<Friend>> addFriendByQr({
    required String friendId,
    required String token,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 550));
    try {
      return Success<Friend>(
        _store.addFriendByQr(friendId: friendId, token: token),
      );
    } on Object catch (error) {
      return Failed<Friend>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<List<Friend>>> notifyFriends({required String eventId}) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    try {
      return Success<List<Friend>>(_store.notifyFriends(eventId: eventId));
    } on Object catch (error) {
      return Failed<List<Friend>>(FailureMapper.from(error));
    }
  }

  @override
  Stream<ActivityItem> watchActivity() => _store.watchActivity();

  @override
  Future<Result<CascadeInvite>> createCascadeInvite(String eventId) async {
    await Future<void>.delayed(const Duration(milliseconds: 380));
    try {
      return Success<CascadeInvite>(_store.createCascadeInvite(eventId));
    } on Object catch (error) {
      return Failed<CascadeInvite>(FailureMapper.from(error));
    }
  }
}
