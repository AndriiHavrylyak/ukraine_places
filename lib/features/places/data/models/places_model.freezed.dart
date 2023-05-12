// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacesModel _$PlacesModelFromJson(Map<String, dynamic> json) {
  return _PlacesModel.fromJson(json);
}

/// @nodoc
mixin _$PlacesModel {
  String get name => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  String get placeType => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;
  List<String>? get uniqueness => throw _privateConstructorUsedError;
  bool get validated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesModelCopyWith<PlacesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesModelCopyWith<$Res> {
  factory $PlacesModelCopyWith(
          PlacesModel value, $Res Function(PlacesModel) then) =
      _$PlacesModelCopyWithImpl<$Res, PlacesModel>;
  @useResult
  $Res call(
      {String name,
      String images,
      String placeId,
      LocationModel location,
      String placeType,
      String shortDescription,
      String fullDescription,
      List<String>? uniqueness,
      bool validated});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$PlacesModelCopyWithImpl<$Res, $Val extends PlacesModel>
    implements $PlacesModelCopyWith<$Res> {
  _$PlacesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? images = null,
    Object? placeId = null,
    Object? location = null,
    Object? placeType = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
    Object? uniqueness = freezed,
    Object? validated = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueness: freezed == uniqueness
          ? _value.uniqueness
          : uniqueness // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validated: null == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlacesModelCopyWith<$Res>
    implements $PlacesModelCopyWith<$Res> {
  factory _$$_PlacesModelCopyWith(
          _$_PlacesModel value, $Res Function(_$_PlacesModel) then) =
      __$$_PlacesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String images,
      String placeId,
      LocationModel location,
      String placeType,
      String shortDescription,
      String fullDescription,
      List<String>? uniqueness,
      bool validated});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$_PlacesModelCopyWithImpl<$Res>
    extends _$PlacesModelCopyWithImpl<$Res, _$_PlacesModel>
    implements _$$_PlacesModelCopyWith<$Res> {
  __$$_PlacesModelCopyWithImpl(
      _$_PlacesModel _value, $Res Function(_$_PlacesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? images = null,
    Object? placeId = null,
    Object? location = null,
    Object? placeType = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
    Object? uniqueness = freezed,
    Object? validated = null,
  }) {
    return _then(_$_PlacesModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueness: freezed == uniqueness
          ? _value._uniqueness
          : uniqueness // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validated: null == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacesModel extends _PlacesModel with DiagnosticableTreeMixin {
  const _$_PlacesModel(
      {required this.name,
      required this.images,
      required this.placeId,
      required this.location,
      required this.placeType,
      required this.shortDescription,
      required this.fullDescription,
      required final List<String>? uniqueness,
      required this.validated})
      : _uniqueness = uniqueness,
        super._();

  factory _$_PlacesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesModelFromJson(json);

  @override
  final String name;
  @override
  final String images;
  @override
  final String placeId;
  @override
  final LocationModel location;
  @override
  final String placeType;
  @override
  final String shortDescription;
  @override
  final String fullDescription;
  final List<String>? _uniqueness;
  @override
  List<String>? get uniqueness {
    final value = _uniqueness;
    if (value == null) return null;
    if (_uniqueness is EqualUnmodifiableListView) return _uniqueness;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool validated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlacesModel(name: $name, images: $images, placeId: $placeId, location: $location, placeType: $placeType, shortDescription: $shortDescription, fullDescription: $fullDescription, uniqueness: $uniqueness, validated: $validated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlacesModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('placeId', placeId))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('placeType', placeType))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('fullDescription', fullDescription))
      ..add(DiagnosticsProperty('uniqueness', uniqueness))
      ..add(DiagnosticsProperty('validated', validated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.placeType, placeType) ||
                other.placeType == placeType) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.fullDescription, fullDescription) ||
                other.fullDescription == fullDescription) &&
            const DeepCollectionEquality()
                .equals(other._uniqueness, _uniqueness) &&
            (identical(other.validated, validated) ||
                other.validated == validated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      images,
      placeId,
      location,
      placeType,
      shortDescription,
      fullDescription,
      const DeepCollectionEquality().hash(_uniqueness),
      validated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacesModelCopyWith<_$_PlacesModel> get copyWith =>
      __$$_PlacesModelCopyWithImpl<_$_PlacesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesModelToJson(
      this,
    );
  }
}

abstract class _PlacesModel extends PlacesModel {
  const factory _PlacesModel(
      {required final String name,
      required final String images,
      required final String placeId,
      required final LocationModel location,
      required final String placeType,
      required final String shortDescription,
      required final String fullDescription,
      required final List<String>? uniqueness,
      required final bool validated}) = _$_PlacesModel;
  const _PlacesModel._() : super._();

  factory _PlacesModel.fromJson(Map<String, dynamic> json) =
      _$_PlacesModel.fromJson;

  @override
  String get name;
  @override
  String get images;
  @override
  String get placeId;
  @override
  LocationModel get location;
  @override
  String get placeType;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  List<String>? get uniqueness;
  @override
  bool get validated;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesModelCopyWith<_$_PlacesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
