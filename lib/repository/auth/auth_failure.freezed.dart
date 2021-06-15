// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  SystemMemoryFailure systemMemoryFailure() {
    return const SystemMemoryFailure();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() systemMemoryFailure,
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
abstract class $SystemMemoryFailureCopyWith<$Res> {
  factory $SystemMemoryFailureCopyWith(
          SystemMemoryFailure value, $Res Function(SystemMemoryFailure) then) =
      _$SystemMemoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SystemMemoryFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $SystemMemoryFailureCopyWith<$Res> {
  _$SystemMemoryFailureCopyWithImpl(
      SystemMemoryFailure _value, $Res Function(SystemMemoryFailure) _then)
      : super(_value, (v) => _then(v as SystemMemoryFailure));

  @override
  SystemMemoryFailure get _value => super._value as SystemMemoryFailure;
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
      ..add(DiagnosticsProperty('type', 'AuthFailure.systemMemoryFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SystemMemoryFailure);
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
