import 'package:dartz/dartz.dart';

import '../../../../core/common/data/models/error/response_error.dart';
import '../../../../core/common/data/repositories/repositories.dart';
import '../../domain/entities/get_places_entity.dart';
import '../../domain/repositories/places_repository.dart';
import '../../domain/use_cases/get_places.dart';
import '../data_sources/remote/places_remote_datasource.dart';
import '../models/response/get_places_model_response.dart';

class PlacesRepositoryImpl implements PlacesRepository {
  final PlacesDataRemoteSource _placesDataRemoteSource;

  PlacesRepositoryImpl(this._placesDataRemoteSource);

  @override
  Future<Either<DataFailure, GetPlacesEntity>> getPlaces(
      GetPlacesParams params) async {
    GetPlacesModelResponse getPlacesResult;
    try {
      getPlacesResult = await _placesDataRemoteSource.getPlaces(
        region: params.region,
      );

      return Right(GetPlacesEntity(places: getPlacesResult));
    } catch (exception, stackTrace) {
      return handleResponseError(exception, stackTrace);
    }
  }
}
