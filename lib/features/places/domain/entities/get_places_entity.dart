import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/response/get_places_model_response.dart';
part 'get_places_entity.freezed.dart';

@freezed
class GetPlacesEntity with _$GetPlacesEntity {
  const GetPlacesEntity._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GetPlacesEntity({
    required GetPlacesModelResponse places
  }) = _GetPlacesEntity;

}
