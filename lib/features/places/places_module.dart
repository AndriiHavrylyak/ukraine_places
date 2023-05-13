import 'package:flutter_modular/flutter_modular.dart';
import 'package:ukraine_places/features/places/presentation/managers/places_bloc.dart';

import '../../core/constants/routes.dart';
import 'data/data_sources/remote/places_data_service.dart';
import 'data/data_sources/remote/places_remote_datasource.dart';
import 'data/repositories/places_repository_impl.dart';
import 'domain/use_cases/get_places.dart';
import 'presentation/pages/places_page.dart';

class PlacesModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((dio) => PlacesDataService(dio())),
        Bind.lazySingleton((service) => PlacesDataRemoteSourceImpl(service())),
        Bind.lazySingleton((servicePlacesRepository) =>
            PlacesRepositoryImpl(servicePlacesRepository())),
        Bind.singleton((repository) => GetPlaces(repository())),
        Bind.lazySingleton((_) => PlacesBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Routes.root, child: (context, args) => const PlacesPage()),
      ];
}
