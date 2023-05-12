import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class MobileParameters {
  static AndroidParameters androidParameters = AndroidParameters(
    packageName: 'com.riding_rainbow',
    // minimumVersion: 1,
    // fallbackUrl: Uri.parse('https://riding-rainbow-dev.web.app/'),
  );

  static IOSParameters iosParameters = IOSParameters(
    bundleId: 'com.ridingrainbow',
    minimumVersion: '1.3.0',
    appStoreId: '1640246025',
    // fallbackUrl: Uri.parse('https://riding-rainbow-dev.web.app/'),
  );
}
