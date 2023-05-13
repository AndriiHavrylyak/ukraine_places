import 'package:ukraine_places/features/places/data/data_sources/remote/places_data_service.dart';

import '../../../../../core/config/build_environment.dart';
import '../../models/request/get_places_model_request.dart';
import '../../models/response/get_places_model_response.dart';

abstract class PlacesDataRemoteSource {
  Future<GetPlacesModelResponse> getPlaces({
    required String region,
  });
}

class PlacesDataRemoteSourceImpl implements PlacesDataRemoteSource {
  final PlacesDataService _placesDataService;

  PlacesDataRemoteSourceImpl(this._placesDataService);

  @override
  Future<GetPlacesModelResponse> getPlaces({
    required String region,
  }) {
    return _placesDataService.getPlaces(
      env.places,
      GetPlacesModelRequest(
        region: region,
      ),
    );
  }

}
