// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_list_with_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacesModelWithKey _$$_PlacesModelWithKeyFromJson(
        Map<String, dynamic> json) =>
    _$_PlacesModelWithKey(
      key: json['key'] as String,
      placesModel:
          PlacesModel.fromJson(json['placesModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlacesModelWithKeyToJson(
        _$_PlacesModelWithKey instance) =>
    <String, dynamic>{
      'key': instance.key,
      'placesModel': instance.placesModel,
    };
