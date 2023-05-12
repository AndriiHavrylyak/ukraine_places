import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/features/profile/presentation/managerts/profile_bloc.dart';
import 'package:ukraine_places/features/profile/presentation/pages/profile_page.dart';

import '../../core/constants/routes.dart';
import '../base/base_module.dart';

class ProfileModule extends Module {
  @override
  List<Module> get imports => [
    BaseModule(),
  ];

  @override
  List<Bind<Object>> get binds => [
    Bind.factory((_) => ProfileBloc()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Routes.root, child: (context, args) => const ProfilePage()),
      ];
}
