// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkInternetConnection,
    required TResult Function(String message) serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkInternetConnection,
    TResult Function(String message)? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkInternetConnection,
    TResult Function(String message)? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckInternetConnection value) checkInternetConnection,
    required TResult Function(ServerFailure value) serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckInternetConnection value)? checkInternetConnection,
    TResult Function(ServerFailure value)? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckInternetConnection value)? checkInternetConnection,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFailureCopyWith<$Res> {
  factory $CoreFailureCopyWith(CoreFailure value, $Res Function(CoreFailure) then) = _$CoreFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreFailureCopyWithImpl<$Res> implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  final CoreFailure _value;
  // ignore: unused_field
  final $Res Function(CoreFailure) _then;
}

/// @nodoc
abstract class _$$CheckInternetConnectionCopyWith<$Res> {
  factory _$$CheckInternetConnectionCopyWith(
          _$CheckInternetConnection value, $Res Function(_$CheckInternetConnection) then) =
      __$$CheckInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckInternetConnectionCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$CheckInternetConnectionCopyWith<$Res> {
  __$$CheckInternetConnectionCopyWithImpl(
      _$CheckInternetConnection _value, $Res Function(_$CheckInternetConnection) _then)
      : super(_value, (v) => _then(v as _$CheckInternetConnection));

  @override
  _$CheckInternetConnection get _value => super._value as _$CheckInternetConnection;
}

/// @nodoc

class _$CheckInternetConnection with DiagnosticableTreeMixin implements CheckInternetConnection {
  const _$CheckInternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreFailure.checkInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CoreFailure.checkInternetConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CheckInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkInternetConnection,
    required TResult Function(String message) serverFailure,
  }) {
    return checkInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkInternetConnection,
    TResult Function(String message)? serverFailure,
  }) {
    return checkInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkInternetConnection,
    TResult Function(String message)? serverFailure,
    required TResult orElse(),
  }) {
    if (checkInternetConnection != null) {
      return checkInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckInternetConnection value) checkInternetConnection,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return checkInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckInternetConnection value)? checkInternetConnection,
    TResult Function(ServerFailure value)? serverFailure,
  }) {
    return checkInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckInternetConnection value)? checkInternetConnection,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (checkInternetConnection != null) {
      return checkInternetConnection(this);
    }
    return orElse();
  }
}

abstract class CheckInternetConnection implements CoreFailure {
  const factory CheckInternetConnection() = _$CheckInternetConnection;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(_$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(_$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailure with DiagnosticableTreeMixin implements ServerFailure {
  const _$ServerFailure(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreFailure.serverFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoreFailure.serverFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkInternetConnection,
    required TResult Function(String message) serverFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkInternetConnection,
    TResult Function(String message)? serverFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkInternetConnection,
    TResult Function(String message)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckInternetConnection value) checkInternetConnection,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckInternetConnection value)? checkInternetConnection,
    TResult Function(ServerFailure value)? serverFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckInternetConnection value)? checkInternetConnection,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements CoreFailure {
  const factory ServerFailure(final String message) = _$ServerFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith => throw _privateConstructorUsedError;
}
