import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/features/profile_settings/presentation/pages/profile_settings_page.dart';

import '../../core/constants/routes.dart';
import '../../core/core_module.dart';
import 'data/repositories/setting_repository_impl.dart';
import 'domain/use_cases/change_theme.dart';
import 'presentation/manager/setting_profile_bloc.dart';

class ProfileSettingsModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((dataSource) => SettingRepositoryImpl()),
        Bind.singleton((repository) => ChangeTheme(repository())),
        Bind.lazySingleton((_) => SettingProfileBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Routes.root,
            child: (context, args) => const ProfileSettingsPage()),
      ];
}
