import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_exception.freezed.dart';

@freezed
class GameException with _$GameException implements Exception {
  const factory GameException.memoryException() = MemoryException;

  const factory GameException.alreadyInStorageException() = AlreadyInStorageException;
}
