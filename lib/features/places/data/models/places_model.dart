import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/data/models/feedback_model.dart';
import '../../../../core/common/data/models/image_author_model.dart';
import '../../../../core/common/data/models/location_model.dart';

part 'places_model.freezed.dart';

part 'places_model.g.dart';

@freezed
class PlacesModel with _$PlacesModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const PlacesModel._();

  const factory PlacesModel(
      {required String name,
      required String images,
      required String placeId,
      required LocationModel location,
      required String placeType,
      required String shortDescription,
      required String fullDescription,
      required List<String>? uniqueness,
      required bool validated}) = _PlacesModel;

  factory PlacesModel.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelFromJson(json);
}
