import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game_exception.freezed.dart';

@freezed
class GameException with _$GameException implements Exception {
  const factory GameException.noInternetConnection() = NoInternetConnection;

  const factory GameException.timeOutException() = TimeOutException;

  const factory GameException.serverException(String message) = ServerException;
}
