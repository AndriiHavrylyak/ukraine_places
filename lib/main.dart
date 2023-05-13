import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/generated/codegen_loader.g.dart';
import 'core/config/build_environment.dart';
import 'core/constants/routes.dart';
import 'core/constants/urls.dart';
import 'features/app/app_module.dart';
import 'features/app/app_widget.dart';

void main() async {
  BuildEnvironment.init(
    flavor: BuildFlavor.development,
    baseUrl: Urls.base,
    places: Urls.places,
    profile: Urls.profile,
  );

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    Modular.setInitialRoute(
      ModuleRoutes.splash + Routes.root,
    );
    runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('uk')],
      fallbackLocale: const Locale('uk'),
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      child: ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    ));
  });
}
