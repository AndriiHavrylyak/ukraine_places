import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_places_model_request.freezed.dart';

part 'get_places_model_request.g.dart';

@freezed
class GetPlacesModelRequest with _$GetPlacesModelRequest {
  factory GetPlacesModelRequest.fromJson(Map<String, dynamic> json) =>
      _$GetPlacesModelRequestFromJson(json);

  const factory GetPlacesModelRequest({
    required String region,
  }) = _GetPlacesModelRequest;
}
