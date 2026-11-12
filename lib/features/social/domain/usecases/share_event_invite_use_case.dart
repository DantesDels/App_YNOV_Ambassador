import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/invite_sharing_service.dart';

class ShareEventInviteUseCase {
  const ShareEventInviteUseCase(this._sharingService);

  final InviteSharingService _sharingService;

  Future<Result<void>> call(CascadeInvite invite) async {
    if (invite.isExpired) {
      return const Failed<void>(
        ValidationFailure('Cette invitation a expiré, régénère-la.'),
      );
    }
    await _sharingService.shareText(
      text: invite.shareMessage,
      subject: invite.eventTitle,
      shareUrl: invite.shareUrl,
    );
    return const Success<void>(null);
  }
}

