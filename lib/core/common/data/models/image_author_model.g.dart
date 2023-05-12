// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_author_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageAuthorModel _$$_ImageAuthorModelFromJson(Map<String, dynamic> json) =>
    _$_ImageAuthorModel(
      settlement: (json['settlement'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      author: json['author'] as String,
      resource: json['resource'] as String?,
    );

Map<String, dynamic> _$$_ImageAuthorModelToJson(_$_ImageAuthorModel instance) =>
    <String, dynamic>{
      'settlement': instance.settlement,
      'author': instance.author,
      'resource': instance.resource,
    };
