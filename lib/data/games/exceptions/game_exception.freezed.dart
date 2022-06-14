// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() memoryException,
    required TResult Function() alreadyInStorageException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? memoryException,
    TResult Function()? alreadyInStorageException,
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
    required TResult Function(AlreadyInStorageException value) alreadyInStorageException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)? alreadyInStorageException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)? alreadyInStorageException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameExceptionCopyWith<$Res> {
  factory $GameExceptionCopyWith(GameException value, $Res Function(GameException) then) =
      _$GameExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameExceptionCopyWithImpl<$Res> implements $GameExceptionCopyWith<$Res> {
  _$GameExceptionCopyWithImpl(this._value, this._then);

  final GameException _value;
  // ignore: unused_field
  final $Res Function(GameException) _then;
}

/// @nodoc
abstract class _$$MemoryExceptionCopyWith<$Res> {
  factory _$$MemoryExceptionCopyWith(_$MemoryException value, $Res Function(_$MemoryException) then) =
      __$$MemoryExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MemoryExceptionCopyWithImpl<$Res> extends _$GameExceptionCopyWithImpl<$Res>
    implements _$$MemoryExceptionCopyWith<$Res> {
  __$$MemoryExceptionCopyWithImpl(_$MemoryException _value, $Res Function(_$MemoryException) _then)
      : super(_value, (v) => _then(v as _$MemoryException));

  @override
  _$MemoryException get _value => super._value as _$MemoryException;
}

/// @nodoc

class _$MemoryException with DiagnosticableTreeMixin implements MemoryException {
  const _$MemoryException();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameException.memoryException()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GameException.memoryException'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$MemoryException);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? memoryException,
    TResult Function()? alreadyInStorageException,
  }) {
    return memoryException?.call();
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
    required TResult Function(AlreadyInStorageException value) alreadyInStorageException,
  }) {
    return memoryException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)? alreadyInStorageException,
  }) {
    return memoryException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)? alreadyInStorageException,
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
abstract class _$$AlreadyInStorageExceptionCopyWith<$Res> {
  factory _$$AlreadyInStorageExceptionCopyWith(
          _$AlreadyInStorageException value, $Res Function(_$AlreadyInStorageException) then) =
      __$$AlreadyInStorageExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyInStorageExceptionCopyWithImpl<$Res> extends _$GameExceptionCopyWithImpl<$Res>
    implements _$$AlreadyInStorageExceptionCopyWith<$Res> {
  __$$AlreadyInStorageExceptionCopyWithImpl(
      _$AlreadyInStorageException _value, $Res Function(_$AlreadyInStorageException) _then)
      : super(_value, (v) => _then(v as _$AlreadyInStorageException));

  @override
  _$AlreadyInStorageException get _value => super._value as _$AlreadyInStorageException;
}

/// @nodoc

class _$AlreadyInStorageException with DiagnosticableTreeMixin implements AlreadyInStorageException {
  const _$AlreadyInStorageException();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameException.alreadyInStorageException()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GameException.alreadyInStorageException'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$AlreadyInStorageException);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? memoryException,
    TResult Function()? alreadyInStorageException,
  }) {
    return alreadyInStorageException?.call();
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
    required TResult Function(AlreadyInStorageException value) alreadyInStorageException,
  }) {
    return alreadyInStorageException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)? alreadyInStorageException,
  }) {
    return alreadyInStorageException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MemoryException value)? memoryException,
    TResult Function(AlreadyInStorageException value)? alreadyInStorageException,
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
