import 'package:campus_pulse/core/errors/result.dart';
import 'activity_item.dart';
import 'cascade_invite.dart';
import 'friend.dart';

abstract interface class SocialRepository {
  Future<Result<List<Friend>>> fetchFriends();

  /// [payload] is the raw QR/deep-link content. The backend verifies the token
  /// signature before creating the friendship.
  Future<Result<Friend>> addFriendByQr({required String friendId, required String token});

  Future<Result<List<Friend>>> notifyFriends({required String eventId});

  Stream<ActivityItem> watchActivity();

  Future<Result<CascadeInvite>> createCascadeInvite(String eventId);
}
