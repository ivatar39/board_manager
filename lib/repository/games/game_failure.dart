import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_failure.freezed.dart';

@freezed
class GameFailure with _$GameFailure implements Exception {
  const factory GameFailure.couldNotAddToCollection() = CouldNotAddToCollection;

  const factory GameFailure.alreadyInCollection() = AlreadyInCollection;
}
