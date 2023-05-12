// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_author_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageAuthorModel _$ImageAuthorModelFromJson(Map<String, dynamic> json) {
  return _ImageAuthorModel.fromJson(json);
}

/// @nodoc
mixin _$ImageAuthorModel {
  List<String> get settlement => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String? get resource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageAuthorModelCopyWith<ImageAuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageAuthorModelCopyWith<$Res> {
  factory $ImageAuthorModelCopyWith(
          ImageAuthorModel value, $Res Function(ImageAuthorModel) then) =
      _$ImageAuthorModelCopyWithImpl<$Res, ImageAuthorModel>;
  @useResult
  $Res call({List<String> settlement, String author, String? resource});
}

/// @nodoc
class _$ImageAuthorModelCopyWithImpl<$Res, $Val extends ImageAuthorModel>
    implements $ImageAuthorModelCopyWith<$Res> {
  _$ImageAuthorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settlement = null,
    Object? author = null,
    Object? resource = freezed,
  }) {
    return _then(_value.copyWith(
      settlement: null == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as List<String>,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageAuthorModelCopyWith<$Res>
    implements $ImageAuthorModelCopyWith<$Res> {
  factory _$$_ImageAuthorModelCopyWith(
          _$_ImageAuthorModel value, $Res Function(_$_ImageAuthorModel) then) =
      __$$_ImageAuthorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> settlement, String author, String? resource});
}

/// @nodoc
class __$$_ImageAuthorModelCopyWithImpl<$Res>
    extends _$ImageAuthorModelCopyWithImpl<$Res, _$_ImageAuthorModel>
    implements _$$_ImageAuthorModelCopyWith<$Res> {
  __$$_ImageAuthorModelCopyWithImpl(
      _$_ImageAuthorModel _value, $Res Function(_$_ImageAuthorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settlement = null,
    Object? author = null,
    Object? resource = freezed,
  }) {
    return _then(_$_ImageAuthorModel(
      settlement: null == settlement
          ? _value._settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as List<String>,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageAuthorModel extends _ImageAuthorModel
    with DiagnosticableTreeMixin {
  const _$_ImageAuthorModel(
      {required final List<String> settlement,
      required this.author,
      required this.resource})
      : _settlement = settlement,
        super._();

  factory _$_ImageAuthorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageAuthorModelFromJson(json);

  final List<String> _settlement;
  @override
  List<String> get settlement {
    if (_settlement is EqualUnmodifiableListView) return _settlement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_settlement);
  }

  @override
  final String author;
  @override
  final String? resource;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageAuthorModel(settlement: $settlement, author: $author, resource: $resource)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageAuthorModel'))
      ..add(DiagnosticsProperty('settlement', settlement))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('resource', resource));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageAuthorModel &&
            const DeepCollectionEquality()
                .equals(other._settlement, _settlement) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.resource, resource) ||
                other.resource == resource));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_settlement), author, resource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageAuthorModelCopyWith<_$_ImageAuthorModel> get copyWith =>
      __$$_ImageAuthorModelCopyWithImpl<_$_ImageAuthorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageAuthorModelToJson(
      this,
    );
  }
}

abstract class _ImageAuthorModel extends ImageAuthorModel {
  const factory _ImageAuthorModel(
      {required final List<String> settlement,
      required final String author,
      required final String? resource}) = _$_ImageAuthorModel;
  const _ImageAuthorModel._() : super._();

  factory _ImageAuthorModel.fromJson(Map<String, dynamic> json) =
      _$_ImageAuthorModel.fromJson;

  @override
  List<String> get settlement;
  @override
  String get author;
  @override
  String? get resource;
  @override
  @JsonKey(ignore: true)
  _$$_ImageAuthorModelCopyWith<_$_ImageAuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
