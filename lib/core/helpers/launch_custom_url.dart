import 'package:url_launcher/url_launcher.dart';

import '../common/widgets/show_custom_snack_bar.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    try {
      final canLaunch = await canLaunchUrl(uri);
      if (canLaunch) {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
      } else {
        showCustomSnackBar(context, 'عذراً، لا يمكن فتح الرابط حالياً.');
      }
    } catch (e) {
      showCustomSnackBar(context, 'عذراً، لا يمكن فتح الرابط حالياً.');
    }
  }
}

/*

  onPressed: () async {
    launchCustomUrl(context, 'My Link');
  },

*/
