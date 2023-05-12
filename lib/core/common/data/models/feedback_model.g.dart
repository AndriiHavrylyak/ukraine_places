// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackModel _$$_FeedbackModelFromJson(Map<String, dynamic> json) =>
    _$_FeedbackModel(
      userId: json['userId'] as String,
      feedbackId: json['feedbackId'] as String,
      text: json['text'] as String,
      rating: (json['rating'] as num).toDouble(),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_FeedbackModelToJson(_$_FeedbackModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'feedbackId': instance.feedbackId,
      'text': instance.text,
      'rating': instance.rating,
      'imageUrls': instance.imageUrls,
    };
