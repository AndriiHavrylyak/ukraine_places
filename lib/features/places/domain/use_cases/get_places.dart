import 'package:equatable/equatable.dart';

import '../../../../core/common/domain/entities/result.dart';
import '../../../../core/common/domain/use_cases/usecase.dart';
import '../entities/get_places_entity.dart';
import '../repositories/places_repository.dart';

class GetPlaces extends UseCase<GetPlacesEntity, GetPlacesParams> {
  final PlacesRepository placesRepository;

  GetPlaces(this.placesRepository);

  @override
  Future<Result<GetPlacesEntity>> call(params) async {
    return Result(await placesRepository.getPlaces(params));
  }
}

class GetPlacesParams extends Equatable {
  final String region;

  const GetPlacesParams({
    required this.region,
  });

  @override
  List<Object?> get props => [
        region,
      ];
}
