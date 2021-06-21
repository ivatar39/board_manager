// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameExceptionTearOff {
  const _$GameExceptionTearOff();

  MemoryException memoryException() {
    return const MemoryException();
  }

  AlreadyInStorageException alreadyInStorageException() {
    return const AlreadyInStorageException();
  }
}

/// @nodoc
const $GameException = _$GameExceptionTearOff();

/// @nodoc
mixin _$GameException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() memoryException,
    required TResult Function() alreadyInStorageException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? memoryException,
    TResult Function()? alreadyInStorageException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoryException value) memoryException,
    required TResult Function(AlreadyInStorageException value)
        alreadyInStorageException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)?
        alreadyInStorageException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameExceptionCopyWith<$Res> {
  factory $GameExceptionCopyWith(
          GameException value, $Res Function(GameException) then) =
      _$GameExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameExceptionCopyWithImpl<$Res>
    implements $GameExceptionCopyWith<$Res> {
  _$GameExceptionCopyWithImpl(this._value, this._then);

  final GameException _value;
  // ignore: unused_field
  final $Res Function(GameException) _then;
}

/// @nodoc
abstract class $MemoryExceptionCopyWith<$Res> {
  factory $MemoryExceptionCopyWith(
          MemoryException value, $Res Function(MemoryException) then) =
      _$MemoryExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$MemoryExceptionCopyWithImpl<$Res>
    extends _$GameExceptionCopyWithImpl<$Res>
    implements $MemoryExceptionCopyWith<$Res> {
  _$MemoryExceptionCopyWithImpl(
      MemoryException _value, $Res Function(MemoryException) _then)
      : super(_value, (v) => _then(v as MemoryException));

  @override
  MemoryException get _value => super._value as MemoryException;
}

/// @nodoc

class _$MemoryException
    with DiagnosticableTreeMixin
    implements MemoryException {
  const _$MemoryException();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameException.memoryException()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameException.memoryException'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MemoryException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() memoryException,
    required TResult Function() alreadyInStorageException,
  }) {
    return memoryException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? memoryException,
    TResult Function()? alreadyInStorageException,
    required TResult orElse(),
  }) {
    if (memoryException != null) {
      return memoryException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoryException value) memoryException,
    required TResult Function(AlreadyInStorageException value)
        alreadyInStorageException,
  }) {
    return memoryException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)?
        alreadyInStorageException,
    required TResult orElse(),
  }) {
    if (memoryException != null) {
      return memoryException(this);
    }
    return orElse();
  }
}

abstract class MemoryException implements GameException {
  const factory MemoryException() = _$MemoryException;
}

/// @nodoc
abstract class $AlreadyInStorageExceptionCopyWith<$Res> {
  factory $AlreadyInStorageExceptionCopyWith(AlreadyInStorageException value,
          $Res Function(AlreadyInStorageException) then) =
      _$AlreadyInStorageExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AlreadyInStorageExceptionCopyWithImpl<$Res>
    extends _$GameExceptionCopyWithImpl<$Res>
    implements $AlreadyInStorageExceptionCopyWith<$Res> {
  _$AlreadyInStorageExceptionCopyWithImpl(AlreadyInStorageException _value,
      $Res Function(AlreadyInStorageException) _then)
      : super(_value, (v) => _then(v as AlreadyInStorageException));

  @override
  AlreadyInStorageException get _value =>
      super._value as AlreadyInStorageException;
}

/// @nodoc

class _$AlreadyInStorageException
    with DiagnosticableTreeMixin
    implements AlreadyInStorageException {
  const _$AlreadyInStorageException();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameException.alreadyInStorageException()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'GameException.alreadyInStorageException'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AlreadyInStorageException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() memoryException,
    required TResult Function() alreadyInStorageException,
  }) {
    return alreadyInStorageException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? memoryException,
    TResult Function()? alreadyInStorageException,
    required TResult orElse(),
  }) {
    if (alreadyInStorageException != null) {
      return alreadyInStorageException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MemoryException value) memoryException,
    required TResult Function(AlreadyInStorageException value)
        alreadyInStorageException,
  }) {
    return alreadyInStorageException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)?
        alreadyInStorageException,
    required TResult orElse(),
  }) {
    if (alreadyInStorageException != null) {
      return alreadyInStorageException(this);
    }
    return orElse();
  }
}

abstract class AlreadyInStorageException implements GameException {
  const factory AlreadyInStorageException() = _$AlreadyInStorageException;
}
