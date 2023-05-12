// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_list_with_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacesModelWithKey _$PlacesModelWithKeyFromJson(Map<String, dynamic> json) {
  return _PlacesModelWithKey.fromJson(json);
}

/// @nodoc
mixin _$PlacesModelWithKey {
  String get key => throw _privateConstructorUsedError;
  PlacesModel get placesModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesModelWithKeyCopyWith<PlacesModelWithKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesModelWithKeyCopyWith<$Res> {
  factory $PlacesModelWithKeyCopyWith(
          PlacesModelWithKey value, $Res Function(PlacesModelWithKey) then) =
      _$PlacesModelWithKeyCopyWithImpl<$Res, PlacesModelWithKey>;
  @useResult
  $Res call({String key, PlacesModel placesModel});

  $PlacesModelCopyWith<$Res> get placesModel;
}

/// @nodoc
class _$PlacesModelWithKeyCopyWithImpl<$Res, $Val extends PlacesModelWithKey>
    implements $PlacesModelWithKeyCopyWith<$Res> {
  _$PlacesModelWithKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? placesModel = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      placesModel: null == placesModel
          ? _value.placesModel
          : placesModel // ignore: cast_nullable_to_non_nullable
              as PlacesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlacesModelCopyWith<$Res> get placesModel {
    return $PlacesModelCopyWith<$Res>(_value.placesModel, (value) {
      return _then(_value.copyWith(placesModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlacesModelWithKeyCopyWith<$Res>
    implements $PlacesModelWithKeyCopyWith<$Res> {
  factory _$$_PlacesModelWithKeyCopyWith(_$_PlacesModelWithKey value,
          $Res Function(_$_PlacesModelWithKey) then) =
      __$$_PlacesModelWithKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, PlacesModel placesModel});

  @override
  $PlacesModelCopyWith<$Res> get placesModel;
}

/// @nodoc
class __$$_PlacesModelWithKeyCopyWithImpl<$Res>
    extends _$PlacesModelWithKeyCopyWithImpl<$Res, _$_PlacesModelWithKey>
    implements _$$_PlacesModelWithKeyCopyWith<$Res> {
  __$$_PlacesModelWithKeyCopyWithImpl(
      _$_PlacesModelWithKey _value, $Res Function(_$_PlacesModelWithKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? placesModel = null,
  }) {
    return _then(_$_PlacesModelWithKey(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      placesModel: null == placesModel
          ? _value.placesModel
          : placesModel // ignore: cast_nullable_to_non_nullable
              as PlacesModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacesModelWithKey extends _PlacesModelWithKey {
  const _$_PlacesModelWithKey({required this.key, required this.placesModel})
      : super._();

  factory _$_PlacesModelWithKey.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesModelWithKeyFromJson(json);

  @override
  final String key;
  @override
  final PlacesModel placesModel;

  @override
  String toString() {
    return 'PlacesModelWithKey(key: $key, placesModel: $placesModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesModelWithKey &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.placesModel, placesModel) ||
                other.placesModel == placesModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, placesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacesModelWithKeyCopyWith<_$_PlacesModelWithKey> get copyWith =>
      __$$_PlacesModelWithKeyCopyWithImpl<_$_PlacesModelWithKey>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesModelWithKeyToJson(
      this,
    );
  }
}

abstract class _PlacesModelWithKey extends PlacesModelWithKey {
  const factory _PlacesModelWithKey(
      {required final String key,
      required final PlacesModel placesModel}) = _$_PlacesModelWithKey;
  const _PlacesModelWithKey._() : super._();

  factory _PlacesModelWithKey.fromJson(Map<String, dynamic> json) =
      _$_PlacesModelWithKey.fromJson;

  @override
  String get key;
  @override
  PlacesModel get placesModel;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesModelWithKeyCopyWith<_$_PlacesModelWithKey> get copyWith =>
      throw _privateConstructorUsedError;
}
