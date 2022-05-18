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
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as String,
      fields[6] as int?,
      fields[7] as int?,
      fields[8] as User?,
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

_$_Game _$$_GameFromJson(Map<String, dynamic> json) => _$_Game(
      json['id'] as String,
      json['url'] as String,
      json['thumb_url'] as String? ??
          'https://img.icons8.com/ios/452/board-game.png',
      json['name'] as String,
      json['description_preview'] as String? ?? '',
      json['description'] as String,
      json['min_players'] as int?,
      json['max_players'] as int?,
      json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GameToJson(_$_Game instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'thumb_url': instance.thumbnailUrl,
      'name': instance.name,
      'description_preview': instance.shortDescription,
      'description': instance.description,
      'min_players': instance.minPlayers,
      'max_players': instance.maxPlayers,
      'owner': instance.owner?.toJson(),
    };
