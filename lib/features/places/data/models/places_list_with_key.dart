import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ukraine_places/features/places/data/models/places_model.dart';


part 'places_list_with_key.freezed.dart';
part 'places_list_with_key.g.dart';

@freezed
class PlacesModelWithKey with _$PlacesModelWithKey {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const PlacesModelWithKey._();

  const factory PlacesModelWithKey({
    required String key,
    required PlacesModel placesModel,
  }) = _PlacesModelWithKey;

  factory PlacesModelWithKey.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelWithKeyFromJson(json);
}
