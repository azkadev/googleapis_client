// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoId _$VideoIdFromJson(Map<String, dynamic> json) {
  return _VideoId.fromJson(json);
}

/// @nodoc
mixin _$VideoId {
  /// ID as string.
  String get value => throw _privateConstructorUsedError;

  /// Serializes this VideoId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoId
  /// with the given fields replaced by the non-null parameter values.

  $VideoIdCopyWith<VideoId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoIdCopyWith<$Res> {
  factory $VideoIdCopyWith(VideoId value, $Res Function(VideoId) then) =
      _$VideoIdCopyWithImpl<$Res, VideoId>;

  $Res call({String value});
}

/// @nodoc
class _$VideoIdCopyWithImpl<$Res, $Val extends VideoId>
    implements $VideoIdCopyWith<$Res> {
  _$VideoIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: value is String ? value : _value.value,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoIdImplCopyWith<$Res> implements $VideoIdCopyWith<$Res> {
  factory _$$VideoIdImplCopyWith(
          _$VideoIdImpl value, $Res Function(_$VideoIdImpl) then) =
      __$$VideoIdImplCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$VideoIdImplCopyWithImpl<$Res>
    extends _$VideoIdCopyWithImpl<$Res, _$VideoIdImpl>
    implements _$$VideoIdImplCopyWith<$Res> {
  __$$VideoIdImplCopyWithImpl(
      _$VideoIdImpl _value, $Res Function(_$VideoIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$VideoIdImpl(
      value is String ? value : _value.value,
    ));
  }
}

/// @nodoc

class _$VideoIdImpl extends _VideoId {
  const _$VideoIdImpl(this.value) : super._();

  factory _$VideoIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoIdImplFromJson(json);

  /// ID as string.
  @override
  final String value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoIdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of VideoId
  /// with the given fields replaced by the non-null parameter values.

  @override
  @pragma('vm:prefer-inline')
  _$$VideoIdImplCopyWith<_$VideoIdImpl> get copyWith =>
      __$$VideoIdImplCopyWithImpl<_$VideoIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoIdImplToJson(
      this,
    );
  }
}

abstract class _VideoId extends VideoId {
  const factory _VideoId(final String value) = _$VideoIdImpl;
  const _VideoId._() : super._();

  factory _VideoId.fromJson(Map<String, dynamic> json) = _$VideoIdImpl.fromJson;

  /// ID as string.
  @override
  String get value;

  /// Create a copy of VideoId
  /// with the given fields replaced by the non-null parameter values.
  @override
  _$$VideoIdImplCopyWith<_$VideoIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
