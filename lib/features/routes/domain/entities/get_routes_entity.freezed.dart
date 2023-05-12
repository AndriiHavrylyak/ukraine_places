// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_routes_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetRoutesEntity {
  List<RouteModel>? get routes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetRoutesEntityCopyWith<GetRoutesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRoutesEntityCopyWith<$Res> {
  factory $GetRoutesEntityCopyWith(
          GetRoutesEntity value, $Res Function(GetRoutesEntity) then) =
      _$GetRoutesEntityCopyWithImpl<$Res, GetRoutesEntity>;
  @useResult
  $Res call({List<RouteModel>? routes});
}

/// @nodoc
class _$GetRoutesEntityCopyWithImpl<$Res, $Val extends GetRoutesEntity>
    implements $GetRoutesEntityCopyWith<$Res> {
  _$GetRoutesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_value.copyWith(
      routes: freezed == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetRoutesEntityCopyWith<$Res>
    implements $GetRoutesEntityCopyWith<$Res> {
  factory _$$_GetRoutesEntityCopyWith(
          _$_GetRoutesEntity value, $Res Function(_$_GetRoutesEntity) then) =
      __$$_GetRoutesEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RouteModel>? routes});
}

/// @nodoc
class __$$_GetRoutesEntityCopyWithImpl<$Res>
    extends _$GetRoutesEntityCopyWithImpl<$Res, _$_GetRoutesEntity>
    implements _$$_GetRoutesEntityCopyWith<$Res> {
  __$$_GetRoutesEntityCopyWithImpl(
      _$_GetRoutesEntity _value, $Res Function(_$_GetRoutesEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_$_GetRoutesEntity(
      routes: freezed == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_GetRoutesEntity extends _GetRoutesEntity with DiagnosticableTreeMixin {
  const _$_GetRoutesEntity({required final List<RouteModel>? routes})
      : _routes = routes,
        super._();

  final List<RouteModel>? _routes;
  @override
  List<RouteModel>? get routes {
    final value = _routes;
    if (value == null) return null;
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetRoutesEntity(routes: $routes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetRoutesEntity'))
      ..add(DiagnosticsProperty('routes', routes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRoutesEntity &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_routes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRoutesEntityCopyWith<_$_GetRoutesEntity> get copyWith =>
      __$$_GetRoutesEntityCopyWithImpl<_$_GetRoutesEntity>(this, _$identity);
}

abstract class _GetRoutesEntity extends GetRoutesEntity {
  const factory _GetRoutesEntity({required final List<RouteModel>? routes}) =
      _$_GetRoutesEntity;
  const _GetRoutesEntity._() : super._();

  @override
  List<RouteModel>? get routes;
  @override
  @JsonKey(ignore: true)
  _$$_GetRoutesEntityCopyWith<_$_GetRoutesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
