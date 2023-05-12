
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/features/splash/splash_module.dart';

class SplashGuard extends RouteGuard {
  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    await Modular.isModuleReady<SplashModule>();
    return true;
  }
}
