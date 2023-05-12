import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const LocationModel._();

  const factory LocationModel({
    required String settlement,
    required String region,
    required double lat,
    required double long,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

