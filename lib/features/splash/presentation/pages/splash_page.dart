
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../widgets/splash_widget.dart';

class SplashPage extends StatelessWidget {
  final RemoteMessage? remoteMessage;

  const SplashPage({super.key, this.remoteMessage});

  @override
  Widget build(BuildContext context) {
    return   const SplashWidget();

  }
}
