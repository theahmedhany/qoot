import 'package:url_launcher/url_launcher.dart';

import '../common/widgets/show_custom_snack_bar.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showCustomSnackBar(context, 'عذراً، لا يمكن فتح الرابط حالياً.');
    }
  }
}

/*

  onPressed: () async {
    launchCustomUrl(context, 'My Link');
  },

*/
