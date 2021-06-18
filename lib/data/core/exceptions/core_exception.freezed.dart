// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'core_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreExceptionTearOff {
  const _$CoreExceptionTearOff();

  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }

  TimeOutException timeOutException() {
    return const TimeOutException();
  }

  ServerException serverException(String message) {
    return ServerException(
      message,
    );
  }
}

/// @nodoc
const $CoreException = _$CoreExceptionTearOff();

/// @nodoc
mixin _$CoreException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() timeOutException,
    required TResult Function(String message) serverException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? timeOutException,
    TResult Function(String message)? serverException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(TimeOutException value) timeOutException,
    required TResult Function(ServerException value) serverException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(TimeOutException value)? timeOutException,
    TResult Function(ServerException value)? serverException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreExceptionCopyWith<$Res> {
  factory $CoreExceptionCopyWith(
          CoreException value, $Res Function(CoreException) then) =
      _$CoreExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreExceptionCopyWithImpl<$Res>
    implements $CoreExceptionCopyWith<$Res> {
  _$CoreExceptionCopyWithImpl(this._value, this._then);

  final CoreException _value;
  // ignore: unused_field
  final $Res Function(CoreException) _then;
}

/// @nodoc
abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$CoreExceptionCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

/// @nodoc

class _$NoInternetConnection
    with DiagnosticableTreeMixin
    implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreException.noInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoreException.noInternetConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() timeOutException,
    required TResult Function(String message) serverException,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? timeOutException,
    TResult Function(String message)? serverException,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(TimeOutException value) timeOutException,
    required TResult Function(ServerException value) serverException,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(TimeOutException value)? timeOutException,
    TResult Function(ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements CoreException {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

/// @nodoc
abstract class $TimeOutExceptionCopyWith<$Res> {
  factory $TimeOutExceptionCopyWith(
          TimeOutException value, $Res Function(TimeOutException) then) =
      _$TimeOutExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeOutExceptionCopyWithImpl<$Res>
    extends _$CoreExceptionCopyWithImpl<$Res>
    implements $TimeOutExceptionCopyWith<$Res> {
  _$TimeOutExceptionCopyWithImpl(
      TimeOutException _value, $Res Function(TimeOutException) _then)
      : super(_value, (v) => _then(v as TimeOutException));

  @override
  TimeOutException get _value => super._value as TimeOutException;
}

/// @nodoc

class _$TimeOutException
    with DiagnosticableTreeMixin
    implements TimeOutException {
  const _$TimeOutException();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreException.timeOutException()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoreException.timeOutException'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimeOutException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() timeOutException,
    required TResult Function(String message) serverException,
  }) {
    return timeOutException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? timeOutException,
    TResult Function(String message)? serverException,
    required TResult orElse(),
  }) {
    if (timeOutException != null) {
      return timeOutException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(TimeOutException value) timeOutException,
    required TResult Function(ServerException value) serverException,
  }) {
    return timeOutException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(TimeOutException value)? timeOutException,
    TResult Function(ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (timeOutException != null) {
      return timeOutException(this);
    }
    return orElse();
  }
}

abstract class TimeOutException implements CoreException {
  const factory TimeOutException() = _$TimeOutException;
}

/// @nodoc
abstract class $ServerExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) then) =
      _$ServerExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    extends _$CoreExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(
      ServerException _value, $Res Function(ServerException) _then)
      : super(_value, (v) => _then(v as ServerException));

  @override
  ServerException get _value => super._value as ServerException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerException
    with DiagnosticableTreeMixin
    implements ServerException {
  const _$ServerException(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoreException.serverException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoreException.serverException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ServerExceptionCopyWith<ServerException> get copyWith =>
      _$ServerExceptionCopyWithImpl<ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() timeOutException,
    required TResult Function(String message) serverException,
  }) {
    return serverException(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? timeOutException,
    TResult Function(String message)? serverException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(TimeOutException value) timeOutException,
    required TResult Function(ServerException value) serverException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(TimeOutException value)? timeOutException,
    TResult Function(ServerException value)? serverException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException implements CoreException {
  const factory ServerException(String message) = _$ServerException;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerExceptionCopyWith<ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}
