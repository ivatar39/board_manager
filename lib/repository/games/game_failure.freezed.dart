// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameFailureTearOff {
  const _$GameFailureTearOff();

  CheckInternetConnection checkInternetConnection() {
    return const CheckInternetConnection();
  }

  ServerFailure serverFailure(String message) {
    return ServerFailure(
      message,
    );
  }
}

/// @nodoc
const $GameFailure = _$GameFailureTearOff();

/// @nodoc
mixin _$GameFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkInternetConnection,
    required TResult Function(String message) serverFailure,
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
    required TResult Function(CheckInternetConnection value)
        checkInternetConnection,
    required TResult Function(ServerFailure value) serverFailure,
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
abstract class $GameFailureCopyWith<$Res> {
  factory $GameFailureCopyWith(
          GameFailure value, $Res Function(GameFailure) then) =
      _$GameFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameFailureCopyWithImpl<$Res> implements $GameFailureCopyWith<$Res> {
  _$GameFailureCopyWithImpl(this._value, this._then);

  final GameFailure _value;
  // ignore: unused_field
  final $Res Function(GameFailure) _then;
}

/// @nodoc
abstract class $CheckInternetConnectionCopyWith<$Res> {
  factory $CheckInternetConnectionCopyWith(CheckInternetConnection value,
          $Res Function(CheckInternetConnection) then) =
      _$CheckInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckInternetConnectionCopyWithImpl<$Res>
    extends _$GameFailureCopyWithImpl<$Res>
    implements $CheckInternetConnectionCopyWith<$Res> {
  _$CheckInternetConnectionCopyWithImpl(CheckInternetConnection _value,
      $Res Function(CheckInternetConnection) _then)
      : super(_value, (v) => _then(v as CheckInternetConnection));

  @override
  CheckInternetConnection get _value => super._value as CheckInternetConnection;
}

/// @nodoc

class _$CheckInternetConnection
    with DiagnosticableTreeMixin
    implements CheckInternetConnection {
  const _$CheckInternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameFailure.checkInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameFailure.checkInternetConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckInternetConnection);
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
    required TResult Function(CheckInternetConnection value)
        checkInternetConnection,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return checkInternetConnection(this);
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

abstract class CheckInternetConnection implements GameFailure {
  const factory CheckInternetConnection() = _$CheckInternetConnection;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$GameFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerFailure(
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
    return 'GameFailure.serverFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameFailure.serverFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);

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
    required TResult Function(CheckInternetConnection value)
        checkInternetConnection,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return serverFailure(this);
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

abstract class ServerFailure implements GameFailure {
  const factory ServerFailure(String message) = _$ServerFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
