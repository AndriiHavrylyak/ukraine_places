import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../core/common/data/datasources/remote/connectivity_service.dart';
import '../../core/config/colorz.dart';
import '../../core/constants/titles.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  AppWidgetState createState() => AppWidgetState();
}

class AppWidgetState extends State<AppWidget> {
  final connectivityService = Modular.get<ConnectivityService>();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  late ThemeMode _themeMode  = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    _loadThemeMode();
    connectivityService.connectionStatus.listen((isConnected) {
      if (!isConnected) {
        scaffoldMessengerKey.currentState?.showSnackBar(
          const SnackBar(
            backgroundColor: Colorz.error,
            content: Text(
              Titles.internetConnectionLost,
            ),
            duration: Duration(days: 365),
          ),
        );
      } else {
        scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
      }
    });
  }

  Future<void> _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt('themeMode') ?? ThemeMode.system.index;
    setState(() {
      _themeMode = getThemeModeFromIndex(themeIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    ErrorWidget.builder = (errorDetails) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(
          child: Text('An error occurred: ${errorDetails.exceptionAsString()}'),
        ),
      );
    };
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Titles.appTitle,
      locale: context.locale,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      builder: (context, child) {
        return ScaffoldMessenger(
          key: scaffoldMessengerKey,
          child: child!,
        );
      },
    );
  }
}


ThemeMode getThemeModeFromIndex(int index) {
  switch (index) {
    case 0:
      return ThemeMode.system;
    case 1:
      return ThemeMode.light;
    case 2:
      return ThemeMode.dark;
    default:
      return ThemeMode.system;
  }
}