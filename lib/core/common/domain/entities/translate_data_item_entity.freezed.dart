// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate_data_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TranslationDataItemEntity {
  String get itemName => throw _privateConstructorUsedError;
  String get itemDescription => throw _privateConstructorUsedError;
  String get itemDescriptionLabel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslationDataItemEntityCopyWith<TranslationDataItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationDataItemEntityCopyWith<$Res> {
  factory $TranslationDataItemEntityCopyWith(TranslationDataItemEntity value,
          $Res Function(TranslationDataItemEntity) then) =
      _$TranslationDataItemEntityCopyWithImpl<$Res, TranslationDataItemEntity>;
  @useResult
  $Res call(
      {String itemName, String itemDescription, String itemDescriptionLabel});
}

/// @nodoc
class _$TranslationDataItemEntityCopyWithImpl<$Res,
        $Val extends TranslationDataItemEntity>
    implements $TranslationDataItemEntityCopyWith<$Res> {
  _$TranslationDataItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? itemDescription = null,
    Object? itemDescriptionLabel = null,
  }) {
    return _then(_value.copyWith(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemDescription: null == itemDescription
          ? _value.itemDescription
          : itemDescription // ignore: cast_nullable_to_non_nullable
              as String,
      itemDescriptionLabel: null == itemDescriptionLabel
          ? _value.itemDescriptionLabel
          : itemDescriptionLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TranslationDataItemEntityCopyWith<$Res>
    implements $TranslationDataItemEntityCopyWith<$Res> {
  factory _$$_TranslationDataItemEntityCopyWith(
          _$_TranslationDataItemEntity value,
          $Res Function(_$_TranslationDataItemEntity) then) =
      __$$_TranslationDataItemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemName, String itemDescription, String itemDescriptionLabel});
}

/// @nodoc
class __$$_TranslationDataItemEntityCopyWithImpl<$Res>
    extends _$TranslationDataItemEntityCopyWithImpl<$Res,
        _$_TranslationDataItemEntity>
    implements _$$_TranslationDataItemEntityCopyWith<$Res> {
  __$$_TranslationDataItemEntityCopyWithImpl(
      _$_TranslationDataItemEntity _value,
      $Res Function(_$_TranslationDataItemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? itemDescription = null,
    Object? itemDescriptionLabel = null,
  }) {
    return _then(_$_TranslationDataItemEntity(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemDescription: null == itemDescription
          ? _value.itemDescription
          : itemDescription // ignore: cast_nullable_to_non_nullable
              as String,
      itemDescriptionLabel: null == itemDescriptionLabel
          ? _value.itemDescriptionLabel
          : itemDescriptionLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TranslationDataItemEntity extends _TranslationDataItemEntity {
  const _$_TranslationDataItemEntity(
      {required this.itemName,
      required this.itemDescription,
      required this.itemDescriptionLabel})
      : super._();

  @override
  final String itemName;
  @override
  final String itemDescription;
  @override
  final String itemDescriptionLabel;

  @override
  String toString() {
    return 'TranslationDataItemEntity(itemName: $itemName, itemDescription: $itemDescription, itemDescriptionLabel: $itemDescriptionLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TranslationDataItemEntity &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemDescription, itemDescription) ||
                other.itemDescription == itemDescription) &&
            (identical(other.itemDescriptionLabel, itemDescriptionLabel) ||
                other.itemDescriptionLabel == itemDescriptionLabel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, itemName, itemDescription, itemDescriptionLabel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslationDataItemEntityCopyWith<_$_TranslationDataItemEntity>
      get copyWith => __$$_TranslationDataItemEntityCopyWithImpl<
          _$_TranslationDataItemEntity>(this, _$identity);
}

abstract class _TranslationDataItemEntity extends TranslationDataItemEntity {
  const factory _TranslationDataItemEntity(
          {required final String itemName,
          required final String itemDescription,
          required final String itemDescriptionLabel}) =
      _$_TranslationDataItemEntity;
  const _TranslationDataItemEntity._() : super._();

  @override
  String get itemName;
  @override
  String get itemDescription;
  @override
  String get itemDescriptionLabel;
  @override
  @JsonKey(ignore: true)
  _$$_TranslationDataItemEntityCopyWith<_$_TranslationDataItemEntity>
      get copyWith => throw _privateConstructorUsedError;
}
