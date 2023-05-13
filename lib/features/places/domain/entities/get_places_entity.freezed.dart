// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_places_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPlacesEntity {
  GetPlacesModelResponse get places => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPlacesEntityCopyWith<GetPlacesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlacesEntityCopyWith<$Res> {
  factory $GetPlacesEntityCopyWith(
          GetPlacesEntity value, $Res Function(GetPlacesEntity) then) =
      _$GetPlacesEntityCopyWithImpl<$Res, GetPlacesEntity>;
  @useResult
  $Res call({GetPlacesModelResponse places});

  $GetPlacesModelResponseCopyWith<$Res> get places;
}

/// @nodoc
class _$GetPlacesEntityCopyWithImpl<$Res, $Val extends GetPlacesEntity>
    implements $GetPlacesEntityCopyWith<$Res> {
  _$GetPlacesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as GetPlacesModelResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetPlacesModelResponseCopyWith<$Res> get places {
    return $GetPlacesModelResponseCopyWith<$Res>(_value.places, (value) {
      return _then(_value.copyWith(places: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetPlacesEntityCopyWith<$Res>
    implements $GetPlacesEntityCopyWith<$Res> {
  factory _$$_GetPlacesEntityCopyWith(
          _$_GetPlacesEntity value, $Res Function(_$_GetPlacesEntity) then) =
      __$$_GetPlacesEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetPlacesModelResponse places});

  @override
  $GetPlacesModelResponseCopyWith<$Res> get places;
}

/// @nodoc
class __$$_GetPlacesEntityCopyWithImpl<$Res>
    extends _$GetPlacesEntityCopyWithImpl<$Res, _$_GetPlacesEntity>
    implements _$$_GetPlacesEntityCopyWith<$Res> {
  __$$_GetPlacesEntityCopyWithImpl(
      _$_GetPlacesEntity _value, $Res Function(_$_GetPlacesEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$_GetPlacesEntity(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as GetPlacesModelResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_GetPlacesEntity extends _GetPlacesEntity with DiagnosticableTreeMixin {
  const _$_GetPlacesEntity({required this.places}) : super._();

  @override
  final GetPlacesModelResponse places;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetPlacesEntity(places: $places)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetPlacesEntity'))
      ..add(DiagnosticsProperty('places', places));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPlacesEntity &&
            (identical(other.places, places) || other.places == places));
  }

  @override
  int get hashCode => Object.hash(runtimeType, places);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPlacesEntityCopyWith<_$_GetPlacesEntity> get copyWith =>
      __$$_GetPlacesEntityCopyWithImpl<_$_GetPlacesEntity>(this, _$identity);
}

abstract class _GetPlacesEntity extends GetPlacesEntity {
  const factory _GetPlacesEntity(
      {required final GetPlacesModelResponse places}) = _$_GetPlacesEntity;
  const _GetPlacesEntity._() : super._();

  @override
  GetPlacesModelResponse get places;
  @override
  @JsonKey(ignore: true)
  _$$_GetPlacesEntityCopyWith<_$_GetPlacesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
