import 'package:dartz/dartz.dart';

import '../../../../core/common/data/models/error/response_error.dart';
import '../entities/get_places_entity.dart';
import '../use_cases/get_places.dart';

abstract class PlacesRepository {
  Future<Either<DataFailure, GetPlacesEntity>> getPlaces(GetPlacesParams params);
}