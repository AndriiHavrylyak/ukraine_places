// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackModel _$FeedbackModelFromJson(Map<String, dynamic> json) {
  return _FeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$FeedbackModel {
  String get userId => throw _privateConstructorUsedError;
  String get feedbackId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackModelCopyWith<FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackModelCopyWith<$Res> {
  factory $FeedbackModelCopyWith(
          FeedbackModel value, $Res Function(FeedbackModel) then) =
      _$FeedbackModelCopyWithImpl<$Res, FeedbackModel>;
  @useResult
  $Res call(
      {String userId,
      String feedbackId,
      String text,
      double rating,
      List<String> imageUrls});
}

/// @nodoc
class _$FeedbackModelCopyWithImpl<$Res, $Val extends FeedbackModel>
    implements $FeedbackModelCopyWith<$Res> {
  _$FeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? feedbackId = null,
    Object? text = null,
    Object? rating = null,
    Object? imageUrls = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackId: null == feedbackId
          ? _value.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedbackModelCopyWith<$Res>
    implements $FeedbackModelCopyWith<$Res> {
  factory _$$_FeedbackModelCopyWith(
          _$_FeedbackModel value, $Res Function(_$_FeedbackModel) then) =
      __$$_FeedbackModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String feedbackId,
      String text,
      double rating,
      List<String> imageUrls});
}

/// @nodoc
class __$$_FeedbackModelCopyWithImpl<$Res>
    extends _$FeedbackModelCopyWithImpl<$Res, _$_FeedbackModel>
    implements _$$_FeedbackModelCopyWith<$Res> {
  __$$_FeedbackModelCopyWithImpl(
      _$_FeedbackModel _value, $Res Function(_$_FeedbackModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? feedbackId = null,
    Object? text = null,
    Object? rating = null,
    Object? imageUrls = null,
  }) {
    return _then(_$_FeedbackModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackId: null == feedbackId
          ? _value.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackModel extends _FeedbackModel with DiagnosticableTreeMixin {
  const _$_FeedbackModel(
      {required this.userId,
      required this.feedbackId,
      required this.text,
      required this.rating,
      required final List<String> imageUrls})
      : _imageUrls = imageUrls,
        super._();

  factory _$_FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackModelFromJson(json);

  @override
  final String userId;
  @override
  final String feedbackId;
  @override
  final String text;
  @override
  final double rating;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedbackModel(userId: $userId, feedbackId: $feedbackId, text: $text, rating: $rating, imageUrls: $imageUrls)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedbackModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('feedbackId', feedbackId))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('imageUrls', imageUrls));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbackModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.feedbackId, feedbackId) ||
                other.feedbackId == feedbackId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, feedbackId, text, rating,
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackModelCopyWith<_$_FeedbackModel> get copyWith =>
      __$$_FeedbackModelCopyWithImpl<_$_FeedbackModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackModelToJson(
      this,
    );
  }
}

abstract class _FeedbackModel extends FeedbackModel {
  const factory _FeedbackModel(
      {required final String userId,
      required final String feedbackId,
      required final String text,
      required final double rating,
      required final List<String> imageUrls}) = _$_FeedbackModel;
  const _FeedbackModel._() : super._();

  factory _FeedbackModel.fromJson(Map<String, dynamic> json) =
      _$_FeedbackModel.fromJson;

  @override
  String get userId;
  @override
  String get feedbackId;
  @override
  String get text;
  @override
  double get rating;
  @override
  List<String> get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackModelCopyWith<_$_FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}
