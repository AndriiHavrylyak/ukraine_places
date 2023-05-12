
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/features/base/presentation/pages/general_page.dart';
import 'package:ukraine_places/features/places/places_module.dart';
import 'package:ukraine_places/features/profile/profile_module.dart';

import '../../core/common/presentation/widgets/custom_showcase.dart';
import '../../core/common/presentation/widgets/image_bottomsheet.dart';
import '../../core/constants/routes.dart';
import '../../core/core_module.dart';
import '../main/main_module.dart';
import '../profile_settings/profile_settings_module.dart';
import '../routes/routes_module.dart';


class BaseModule extends Module {
  @override
  List<Module> get imports => [
    CoreModule(),
  ];

  @override
  List<Bind<Object>> get binds => [
    Bind.singleton((context) => ImageBottomSheetController()),
  ];

  Widget withShowCase({required Widget widget}) {
    return CustomShowCaseWidget(
      builder: Builder(builder: (BuildContext context) => widget),
    );
  }



  @override
  List<ModularRoute> get routes => [
    ChildRoute(Routes.root,
        child: (context, args) => withShowCase(
          widget: const GeneralPage(),
        ),
        transition: TransitionType.scale,
        children: [
          ModuleRoute(
            ModuleRoutes.profile,
            transition: TransitionType.leftToRightWithFade,
            module: ProfileModule(),
          ),
          ModuleRoute(
            ModuleRoutes.main,
            transition: TransitionType.leftToRightWithFade,
            module: MainModule(),
          ),
          ModuleRoute(
            ModuleRoutes.place,
            transition: TransitionType.leftToRightWithFade,
            module: PlacesModule(),
          ),
          ModuleRoute(
            ModuleRoutes.routes,
            transition: TransitionType.leftToRightWithFade,
            module: RoutesModule(),
          ),
        ]),
    ModuleRoute(
      ModuleRoutes.profileSettings,
      transition: TransitionType.fadeIn,
      module: ProfileSettingsModule(),
    ),
  ];
}
