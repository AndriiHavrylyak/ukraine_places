import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/core/utils/extensions/string.dart';
import 'package:ukraine_places/generated/locale_keys.g.dart';
import '../../../../core/config/colorz.dart';
import '../../../../core/constants/routes.dart';

class GeneralWidget extends StatefulWidget {
  const GeneralWidget({Key? key}) : super(key: key);

  @override
  State<GeneralWidget> createState() => _GeneralWidgetState();
}

class _GeneralWidgetState extends State<GeneralWidget> {
  final String _route = '${ModuleRoutes.base}%1\$${Routes.root}';
  late String _mainRoute;
  late String _profileRoute;
  late String _placeRoute;
  late String _createNewRoute;

  late int _currentIndex;
  late String _currentRoute;

  @override
  void initState() {
    super.initState();
    _profileRoute = _route.format(ModuleRoutes.profile);
    _mainRoute = _route.format(ModuleRoutes.main);
    _placeRoute = _route.format(ModuleRoutes.place);
    _createNewRoute = _route.format(ModuleRoutes.routes);

    _currentIndex = 1;
    _currentRoute = _mainRoute;
    Modular.setInitialRoute(_mainRoute);
    selectTab(1);
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colorz.primary,
        selectedIconTheme: const IconThemeData(color: Colorz.primary),
        unselectedItemColor: Colorz.pureGray,
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: (selectedTab) => selectTab(selectedTab),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            activeIcon: const Icon(Icons.person, color: Colorz.primary),
            label: LocaleKeys.profile.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            activeIcon: const Icon(Icons.home, color: Colorz.primary),
            label: LocaleKeys.main.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.place),
            activeIcon: const Icon(Icons.place, color: Colorz.primary),
            label: LocaleKeys.places.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.route),
            activeIcon: const Icon(Icons.route, color: Colorz.primary),
            label: LocaleKeys.routes.tr(),
          )
        ],
      ),
    );
  }

  void selectTab(int index) {
    if (_currentIndex == index) return;
    late String _newRoute;
    switch (index) {
      case 0:
        _newRoute = _profileRoute;
        break;
      case 1:
        _newRoute = _mainRoute;
        break;
      case 2:
        _newRoute = _placeRoute;
        break;
      case 3:
        _newRoute = _createNewRoute;
        break;
    }
    setState(() {
      _currentRoute = _newRoute;
      _currentIndex = index;
    });
    Modular.to.navigate(_currentRoute);
  }
}
