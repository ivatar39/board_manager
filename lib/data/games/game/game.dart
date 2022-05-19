import 'package:board_manager/data/auth/user/user.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'game.freezed.dart';
part 'game.g.dart';

const String kDefaultThumbnailUrl = 'https://img.icons8.com/ios/452/board-game.png';

@freezed
@HiveType(typeId: 1)
class Game with _$Game {
  factory Game(
    @HiveField(0) String id,
    @HiveField(1) String url,
    @HiveField(2) @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url') String thumbnailUrl,
    @HiveField(3) String name,
    @HiveField(4) @JsonKey(defaultValue: '', name: 'description_preview') String shortDescription,
    @HiveField(5) String description,
    @HiveField(6) @JsonKey(name: 'min_players') int? minPlayers,
    @HiveField(7) @JsonKey(name: 'max_players') int? maxPlayers,
    @HiveField(8) User? owner,
  ) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
