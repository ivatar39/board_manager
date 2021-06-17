import 'package:board_manager/data/auth/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required String id,
    required String url,
    required String thumbnailUrl,
    required String name,
    required String description,
    required int minPlayers,
    required int maxPlayers,
    required User owner,
  }) = _Game;
}
