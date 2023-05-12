// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RouteModel _$$_RouteModelFromJson(Map<String, dynamic> json) =>
    _$_RouteModel(
      name: json['name'] as String,
      routeId: json['routeId'] as String,
      routeType: json['routeType'] as String,
      places: (json['places'] as List<dynamic>)
          .map((e) => PlacesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
      uniquenessList: (json['uniquenessList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      visibilities: (json['visibilities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      authorId: json['authorId'] as String,
      conductorsList: (json['conductorsList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      validated: json['validated'] as bool,
    );

Map<String, dynamic> _$$_RouteModelToJson(_$_RouteModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'routeId': instance.routeId,
      'routeType': instance.routeType,
      'places': instance.places,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
      'uniquenessList': instance.uniquenessList,
      'visibilities': instance.visibilities,
      'authorId': instance.authorId,
      'conductorsList': instance.conductorsList,
      'validated': instance.validated,
    };
