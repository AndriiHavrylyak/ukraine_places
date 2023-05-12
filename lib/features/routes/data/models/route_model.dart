import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../places/data/models/places_model.dart';

part 'route_model.freezed.dart';

part 'route_model.g.dart';

@freezed
class RouteModel with _$RouteModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const RouteModel._();

  const factory RouteModel({
    required String name,
    required String routeId,
    required String routeType,
    required List<PlacesModel> places,
    required String shortDescription,
    required String fullDescription,
    required List<String> uniquenessList,
    required List<String> visibilities,
    required String authorId,
    required List<String> conductorsList,
    required bool validated,
  }) = _RouteModel;

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);
}
