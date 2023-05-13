import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/common/data/models/location_model.dart';
import '../places_model.dart';

part 'get_places_model_response.freezed.dart';

part 'get_places_model_response.g.dart';

@freezed
class GetPlacesModelResponse with _$GetPlacesModelResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const GetPlacesModelResponse._();

  const factory GetPlacesModelResponse({
    required List<PlacesModel> places,
  }) = _GetPlacesModelResponse;

  factory GetPlacesModelResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPlacesModelResponseFromJson(json);
}
