import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/shared_constans.dart';

class DeepLinkService {
  DeepLinkService._();

  static DeepLinkService? _instance;

  static DeepLinkService? get instance {
    _instance ??= DeepLinkService._();
    return _instance;
  }

  ValueNotifier<String> referrerCode = ValueNotifier<String>('');
  final dynamicLink = FirebaseDynamicLinks.instance;

  Future<void> handleDynamicLinks() async {
    final prefs = await SharedPreferences.getInstance();

    //Get initial dynamic link if app is started using the link
    final data = await dynamicLink.getInitialLink();
    if (data != null) {
      await _handleDeepLink(data);
    } else {
      // If there is no deepLink, remove the saved senderId
      await prefs.remove(SharedConst.cacheInviteKey);
      referrerCode.value = '';
      debugPrint('ReferrerCode removed');
      referrerCode.notifyListeners();
    }

    //handle foreground
    dynamicLink.onLink.listen((event) {
      _handleDeepLink(event);
    }).onError((v) {
      debugPrint('Failed: $v');
    });
  }

  Future<void> _handleDeepLink(PendingDynamicLinkData data) async {
    final prefs = await SharedPreferences.getInstance();

    final Uri deepLink = data.link;
    var isRefer = deepLink.path.contains('invites');
    if (isRefer) {
      var code = deepLink.queryParameters['senderId'];
      if (code != null) {
        await prefs.setString(SharedConst.cacheInviteKey, code);
        referrerCode.value = code;
        debugPrint('ReferrerCode $referrerCode');
        referrerCode.notifyListeners();
      }
    }
  }
}