import 'package:board_manager/data/auth/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

const String kDefaultThumbnailUrl = 'https://img.icons8.com/ios/452/board-game.png';

@freezed
class Game with _$Game {
  @JsonSerializable(explicitToJson: true)
  const factory Game({
    required String id,
    required String url,
    @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url') required String thumbnailUrl,
    required String name,
    @JsonKey(defaultValue: '', name: 'description_preview') required String shortDescription,
    required String description,
    @JsonKey(name: 'min_players') required int? minPlayers,
    @JsonKey(name: 'max_players') required int? maxPlayers,
    @JsonKey(ignore: true) User? owner,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
