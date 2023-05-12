
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/features/routes/presentation/pages/routes_page.dart';

import '../../core/constants/routes.dart';


class RoutesModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Routes.root, child: (context, args) => const RoutesPage()),
      ];
}
