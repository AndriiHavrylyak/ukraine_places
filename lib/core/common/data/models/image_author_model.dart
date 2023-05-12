import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_author_model.freezed.dart';

part 'image_author_model.g.dart';

@freezed
class ImageAuthorModel with _$ImageAuthorModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const ImageAuthorModel._();

  const factory ImageAuthorModel({
    required List<String> settlement,
    required String author,
    required String?  resource,
  }) = _ImageAuthorModel;

  factory ImageAuthorModel.fromJson(Map<String, dynamic> json) =>
      _$ImageAuthorModelFromJson(json);
}

