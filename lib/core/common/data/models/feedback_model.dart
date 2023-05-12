import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_model.freezed.dart';

part 'feedback_model.g.dart';

@freezed
class FeedbackModel with _$FeedbackModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const FeedbackModel._();

  const factory FeedbackModel({
    required String userId,
    required String feedbackId,
    required String text,
    required double rating,
    required List<String> imageUrls,
  }) = _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);
}

