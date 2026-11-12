import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/domain/social_repository.dart';

/// Validates the scanned payload shape, then delegates signature verification
/// to the backend. A forged QR simply resolves to a `ValidationFailure`.
class AddFriendByQrUseCase {
  const AddFriendByQrUseCase(this._repository);

  final SocialRepository _repository;

  Future<Result<Friend>> call(String rawPayload) {
    final Uri? uri = Uri.tryParse(rawPayload.trim());
    if (uri == null || uri.scheme != AppConfig.deepLinkScheme || uri.host != 'friend') {
      return Future<Result<Friend>>.value(
        const Failed<Friend>(
          ValidationFailure('Ce QR code n’est pas une invitation CampusPulse.'),
        ),
      );
    }
    final String friendId = uri.pathSegments.isEmpty ? '' : uri.pathSegments.first;
    final String token = uri.queryParameters['token'] ?? '';
    if (friendId.isEmpty || token.isEmpty) {
      return Future<Result<Friend>>.value(
        const Failed<Friend>(
          ValidationFailure('Invitation incomplète : demande un nouveau QR à ton pote.'),
        ),
      );
    }
    return _repository.addFriendByQr(friendId: friendId, token: token);
  }
}
