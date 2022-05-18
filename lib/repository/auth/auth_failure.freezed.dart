// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() systemMemoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? systemMemoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? systemMemoryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemMemoryFailure value) systemMemoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SystemMemoryFailure value)? systemMemoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemMemoryFailure value)? systemMemoryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$SystemMemoryFailureCopyWith<$Res> {
  factory _$$SystemMemoryFailureCopyWith(_$SystemMemoryFailure value,
          $Res Function(_$SystemMemoryFailure) then) =
      __$$SystemMemoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SystemMemoryFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$SystemMemoryFailureCopyWith<$Res> {
  __$$SystemMemoryFailureCopyWithImpl(
      _$SystemMemoryFailure _value, $Res Function(_$SystemMemoryFailure) _then)
      : super(_value, (v) => _then(v as _$SystemMemoryFailure));

  @override
  _$SystemMemoryFailure get _value => super._value as _$SystemMemoryFailure;
}

/// @nodoc

class _$SystemMemoryFailure
    with DiagnosticableTreeMixin
    implements SystemMemoryFailure {
  const _$SystemMemoryFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.systemMemoryFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthFailure.systemMemoryFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SystemMemoryFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() systemMemoryFailure,
  }) {
    return systemMemoryFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? systemMemoryFailure,
  }) {
    return systemMemoryFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? systemMemoryFailure,
    required TResult orElse(),
  }) {
    if (systemMemoryFailure != null) {
      return systemMemoryFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemMemoryFailure value) systemMemoryFailure,
  }) {
    return systemMemoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SystemMemoryFailure value)? systemMemoryFailure,
  }) {
    return systemMemoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemMemoryFailure value)? systemMemoryFailure,
    required TResult orElse(),
  }) {
    if (systemMemoryFailure != null) {
      return systemMemoryFailure(this);
    }
    return orElse();
  }
}

abstract class SystemMemoryFailure implements AuthFailure {
  const factory SystemMemoryFailure() = _$SystemMemoryFailure;
}
