import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/places_list_with_key.dart';
part 'get_places_entity.freezed.dart';

@freezed
class GetPlacesEntity with _$GetPlacesEntity {
  const GetPlacesEntity._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GetPlacesEntity({
    required Iterable<PlacesModelWithKey>? places
  }) = _GetPlacesEntity;

}
