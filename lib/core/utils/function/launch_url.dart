import 'package:url_launcher/url_launcher.dart';

import 'custom_snack_bar.dart';

Future<void> launchCustomUr(context, String? url) async {
  // فحص هل الرابط موجود او لا
  if (url != null) {
    // تحويل النص الى رابك
    Uri uri = Uri.parse(url);
    //الاتصال بالرابط
    if (await canLaunchUrl(uri)) {
      //عرض الرابط
      await launchUrl(uri);
    } else {
      //عرض رسالة الخطى اذا كان لا يوجد رابط او هناك مشكله في الرابط
      customSnackBar(context, 'Cannot launch $url');
    }
  }
}
