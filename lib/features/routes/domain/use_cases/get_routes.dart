import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';


import '../../../../core/common/domain/entities/result.dart';
import '../../../../core/common/domain/use_cases/usecase.dart';
import '../../data/data_sources/remote/routes_datasource.dart';
import '../entities/get_routes_entity.dart';


class GetRoutes extends UseCase<GetRoutesEntity, GetRoutesParams> {
  final RouteDataSource routeDataSource;

  GetRoutes(this.routeDataSource);

  @override
  Future<Result<GetRoutesEntity>> call(params) async {
    return Future.value(
      Result(
        Right(
          await routeDataSource.getRoutes(params),
        ),
      ),
    );
  }
}

class GetRoutesParams extends Equatable {

  const GetRoutesParams();

  @override
  List<Object?> get props => [];
}
