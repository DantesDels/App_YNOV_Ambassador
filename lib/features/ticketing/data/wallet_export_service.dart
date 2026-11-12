import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

/// Handles the platform-specific wallet hand-off.
///
/// Apple: the backend-signed `.pkpass` is written to a temporary file and shared
/// so iOS can offer "Ajouter à Wallet". Google: we simply open the signed save
/// URL returned by the backend (it embeds a limited-use JWT).
class WalletExportService {
  const WalletExportService();

  Future<File> saveApplePass({required List<int> bytes, required String ticketId}) async {
    final Directory directory = await getTemporaryDirectory();
    final File file = File('${directory.path}/campuspulse-$ticketId.pkpass');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  Future<void> shareApplePass(File file, {required String ticketLabel}) async {
    await SharePlus.instance.share(
      ShareParams(
        files: <XFile>[XFile(file.path, mimeType: 'application/vnd.apple.pkpass')],
        text: 'Ton billet $ticketLabel',
      ),
    );
  }

  Future<bool> openGoogleWallet(String url) async {
    final Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      return false;
    }
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
