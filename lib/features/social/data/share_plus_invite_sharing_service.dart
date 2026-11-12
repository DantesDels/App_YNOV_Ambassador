import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import 'package:campus_pulse/features/social/domain/invite_sharing_service.dart';

class SharePlusInviteSharingService implements InviteSharingService {
  const SharePlusInviteSharingService();

  @override
  Future<void> shareText({
    required String text,
    required String subject,
    String? shareUrl,
  }) async {
    final String shareText = shareUrl == null || shareUrl.isEmpty
        ? text
        : '$text\n\n$shareUrl';
    await SharePlus.instance.share(
      ShareParams(
        text: shareText,
        subject: subject,
        sharePositionOrigin: null,
      ),
    );
  }

  Future<void> copyInvite(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }
}
