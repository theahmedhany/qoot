import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      SnackbarHelper.showErrorSnackbar(
        context,
        'عذراً، لا يمكن فتح الرابط حالياً.',
      );
    }
  }
}

/*

  onPressed: () async {
    launchCustomUrl(context, 'My Link');
  },

*/
