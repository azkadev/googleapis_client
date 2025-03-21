// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'username.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Username {
  /// User name as string.
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of Username
  /// with the given fields replaced by the non-null parameter values.

  $UsernameCopyWith<Username> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameCopyWith<$Res> {
  factory $UsernameCopyWith(Username value, $Res Function(Username) then) =
      _$UsernameCopyWithImpl<$Res, Username>;

  $Res call({String value});
}

/// @nodoc
class _$UsernameCopyWithImpl<$Res, $Val extends Username>
    implements $UsernameCopyWith<$Res> {
  _$UsernameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Username
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
abstract class _$$UsernameImplCopyWith<$Res>
    implements $UsernameCopyWith<$Res> {
  factory _$$UsernameImplCopyWith(
          _$UsernameImpl value, $Res Function(_$UsernameImpl) then) =
      __$$UsernameImplCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$UsernameImplCopyWithImpl<$Res>
    extends _$UsernameCopyWithImpl<$Res, _$UsernameImpl>
    implements _$$UsernameImplCopyWith<$Res> {
  __$$UsernameImplCopyWithImpl(
      _$UsernameImpl _value, $Res Function(_$UsernameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Username
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UsernameImpl(
      value is String ? value : _value.value,
    ));
  }
}

/// @nodoc

class _$UsernameImpl implements _Username {
  const _$UsernameImpl(this.value);

  /// User name as string.
  @override
  final String value;

  @override
  String toString() {
    return 'Username._(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Username
  /// with the given fields replaced by the non-null parameter values.

  @override
  @pragma('vm:prefer-inline')
  _$$UsernameImplCopyWith<_$UsernameImpl> get copyWith =>
      __$$UsernameImplCopyWithImpl<_$UsernameImpl>(this, _$identity);
}

abstract class _Username implements Username {
  const factory _Username(final String value) = _$UsernameImpl;

  /// User name as string.
  @override
  String get value;

  /// Create a copy of Username
  /// with the given fields replaced by the non-null parameter values.
  @override
  _$$UsernameImplCopyWith<_$UsernameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
