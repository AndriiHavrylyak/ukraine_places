
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/common/data/datasources/remote/connectivity_service.dart';
import '../../core/constants/routes.dart';
import '../base/base_module.dart';
import '../splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((_) => ConnectivityService()),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(
      ModuleRoutes.splash,
      module: SplashModule(),
    ),
    ModuleRoute(
      ModuleRoutes.base,
      module: BaseModule(),
    ),
  ];
}
