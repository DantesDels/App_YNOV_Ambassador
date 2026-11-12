import 'package:campus_pulse/core/errors/failure_mapper.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/social/domain/activity_item.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/domain/social_repository.dart';
import 'package:campus_pulse/features/social/data/datasources/social_api_data_source.dart';

class SocialRepositoryImpl implements SocialRepository {
  const SocialRepositoryImpl(this._dataSource);

  final SocialApiDataSource _dataSource;

  @override
  Future<Result<List<Friend>>> fetchFriends() async {
    try {
      return Success<List<Friend>>(await _dataSource.fetchFriends());
    } on Object catch (error) {
      return Failed<List<Friend>>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<Friend>> addFriendByQr({
    required String friendId,
    required String token,
  }) async {
    try {
      return Success<Friend>(
        await _dataSource.addFriendByQr(friendId: friendId, token: token),
      );
    } on Object catch (error) {
      return Failed<Friend>(FailureMapper.from(error));
    }
  }

  @override
  Future<Result<List<Friend>>> notifyFriends({required String eventId}) async {
    try {
      return Success<List<Friend>>(await _dataSource.notifyFriends(eventId));
    } on Object catch (error) {
      return Failed<List<Friend>>(FailureMapper.from(error));
    }
  }

  @override
  Stream<ActivityItem> watchActivity() => _dataSource.watchActivity();

  @override
  Future<Result<CascadeInvite>> createCascadeInvite(String eventId) async {
    try {
      return Success<CascadeInvite>(await _dataSource.createCascadeInvite(eventId));
    } on Object catch (error) {
      return Failed<CascadeInvite>(FailureMapper.from(error));
    }
  }
}
