import 'dart:async';

import '../../../domain/entities/get_routes_entity.dart';
import '../../../domain/use_cases/get_routes.dart';


abstract class RouteDataSource {
  Future<GetRoutesEntity> getRoutes(GetRoutesParams params);
}

class RouteDataSourceImpl implements RouteDataSource {
  @override
  Future<GetRoutesEntity> getRoutes(GetRoutesParams params) {
    // TODO: implement getRoute
    throw UnimplementedError();
  }



}
