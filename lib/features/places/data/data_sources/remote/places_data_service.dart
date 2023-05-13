import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../models/request/get_places_model_request.dart';
import '../../models/response/get_places_model_response.dart';

part 'places_data_service.g.dart';

@RestApi()
abstract class PlacesDataService {
  factory PlacesDataService(Dio dio) = _PlacesDataService;

  @GET('{url}')
  Future<GetPlacesModelResponse> getPlaces(
    @Path('url') String url,
    @Body() GetPlacesModelRequest getPlacesModelRequest,
  );
}
