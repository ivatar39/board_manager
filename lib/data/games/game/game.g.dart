// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Game _$_$_GameFromJson(Map<String, dynamic> json) {
  return _$_Game(
    id: json['id'] as String,
    url: json['url'] as String,
    thumbnailUrl: json['thumb_url'] as String? ??
        'https://img.icons8.com/ios/452/board-game.png',
    name: json['name'] as String,
    shortDescription: json['description_preview'] as String? ?? '',
    description: json['description'] as String,
    minPlayers: json['min_players'] as int?,
    maxPlayers: json['max_players'] as int?,
  );
}

Map<String, dynamic> _$_$_GameToJson(_$_Game instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'thumb_url': instance.thumbnailUrl,
      'name': instance.name,
      'description_preview': instance.shortDescription,
      'description': instance.description,
      'min_players': instance.minPlayers,
      'max_players': instance.maxPlayers,
    };
