import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';


import '../../../../core/common/domain/entities/result.dart';
import '../../../../core/common/domain/use_cases/usecase.dart';
import '../../data/data_sources/remote/places_datasource.dart';
import '../entities/get_places_entity.dart';


class GetPlaces extends UseCase<GetPlacesEntity, GetPlacesParams> {
  final PlacesDataSource placesDataSource;

  GetPlaces(this.placesDataSource);

  @override
  Future<Result<GetPlacesEntity>> call(params) async {
    return Future.value(
      Result(
        Right(
          await placesDataSource.getPlaces(params),
        ),
      ),
    );
  }
}

class GetPlacesParams extends Equatable {
  final String? pageKey;
  final int pageSize;

  const GetPlacesParams({
    required this.pageKey,
    required this.pageSize,
  });

  @override
  List<Object?> get props => [
        pageKey,
        pageSize,
      ];
}
