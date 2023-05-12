import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/route_model.dart';
part 'get_routes_entity.freezed.dart';

@freezed
class GetRoutesEntity with _$GetRoutesEntity {
  const GetRoutesEntity._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GetRoutesEntity({
    required List<RouteModel>? routes
  }) = _GetRoutesEntity;

}
