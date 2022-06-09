// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userNotAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotAuthorized value) userNotAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthorized value)? userNotAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthorized value)? userNotAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(UserFailure value, $Res Function(UserFailure) then) = _$UserFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res> implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  final UserFailure _value;
  // ignore: unused_field
  final $Res Function(UserFailure) _then;
}

/// @nodoc
abstract class _$$UserNotAuthorizedCopyWith<$Res> {
  factory _$$UserNotAuthorizedCopyWith(_$UserNotAuthorized value, $Res Function(_$UserNotAuthorized) then) =
      __$$UserNotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotAuthorizedCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements _$$UserNotAuthorizedCopyWith<$Res> {
  __$$UserNotAuthorizedCopyWithImpl(_$UserNotAuthorized _value, $Res Function(_$UserNotAuthorized) _then)
      : super(_value, (v) => _then(v as _$UserNotAuthorized));

  @override
  _$UserNotAuthorized get _value => super._value as _$UserNotAuthorized;
}

/// @nodoc

class _$UserNotAuthorized with DiagnosticableTreeMixin implements UserNotAuthorized {
  const _$UserNotAuthorized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure.userNotAuthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserFailure.userNotAuthorized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$UserNotAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotAuthorized,
  }) {
    return userNotAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userNotAuthorized,
  }) {
    return userNotAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotAuthorized,
    required TResult orElse(),
  }) {
    if (userNotAuthorized != null) {
      return userNotAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotAuthorized value) userNotAuthorized,
  }) {
    return userNotAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthorized value)? userNotAuthorized,
  }) {
    return userNotAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthorized value)? userNotAuthorized,
    required TResult orElse(),
  }) {
    if (userNotAuthorized != null) {
      return userNotAuthorized(this);
    }
    return orElse();
  }
}

abstract class UserNotAuthorized implements UserFailure {
  const factory UserNotAuthorized() = _$UserNotAuthorized;
}
