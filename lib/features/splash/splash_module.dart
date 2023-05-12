
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/features/splash/presentation/pages/splash_page.dart';


import '../../core/constants/routes.dart';
import '../../core/core_module.dart';

class SplashModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  List<Bind<Object>> get binds => [
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Routes.root,
          child: (_, __) => const SplashPage(),
        ),
      ];
}
