import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game_failure.freezed.dart';

@freezed
class GameFailure with _$GameFailure implements Exception {
  const factory GameFailure.checkInternetConnection() = CheckInternetConnection;

  const factory GameFailure.serverFailure(String message) = ServerFailure;
}
