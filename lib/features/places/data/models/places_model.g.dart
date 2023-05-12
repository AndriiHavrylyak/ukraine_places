// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacesModel _$$_PlacesModelFromJson(Map<String, dynamic> json) =>
    _$_PlacesModel(
      name: json['name'] as String,
      images: json['images'] as String,
      placeId: json['placeId'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      placeType: json['placeType'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
      uniqueness: (json['uniqueness'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      validated: json['validated'] as bool,
    );

Map<String, dynamic> _$$_PlacesModelToJson(_$_PlacesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'images': instance.images,
      'placeId': instance.placeId,
      'location': instance.location,
      'placeType': instance.placeType,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
      'uniqueness': instance.uniqueness,
      'validated': instance.validated,
    };
