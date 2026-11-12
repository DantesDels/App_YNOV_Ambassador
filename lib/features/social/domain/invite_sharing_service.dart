/// Presentation-agnostic sharing port implemented with `share_plus`.
abstract interface class InviteSharingService {
  Future<void> shareText({
    required String text,
    required String subject,
    String? shareUrl,
  });
}
