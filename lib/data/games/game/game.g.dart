// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GameAdapter extends TypeAdapter<Game> {
  @override
  final int typeId = 1;

  @override
  Game read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Game(
      id: fields[0] as String,
      url: fields[1] as String,
      thumbnailUrl: fields[2] as String,
      name: fields[3] as String,
      shortDescription: fields[4] as String,
      description: fields[5] as String,
      minPlayers: fields[6] as int?,
      maxPlayers: fields[7] as int?,
      owner: fields[8] as User?,
    );
  }

  @override
  void write(BinaryWriter writer, Game obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.thumbnailUrl)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.shortDescription)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.minPlayers)
      ..writeByte(7)
      ..write(obj.maxPlayers)
      ..writeByte(8)
      ..write(obj.owner);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
