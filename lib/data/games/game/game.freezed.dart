// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
class _$GameTearOff {
  const _$GameTearOff();

  _Game call(
      {@HiveField(0)
          required String id,
      @HiveField(1)
          required String url,
      @HiveField(2)
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          required String thumbnailUrl,
      @HiveField(3)
          required String name,
      @HiveField(4)
      @JsonKey(defaultValue: '', name: 'description_preview')
          required String shortDescription,
      @HiveField(5)
          required String description,
      @HiveField(6)
      @JsonKey(name: 'min_players')
          required int? minPlayers,
      @HiveField(7)
      @JsonKey(name: 'max_players')
          required int? maxPlayers,
      @HiveField(8)
      @JsonKey(ignore: true)
          User? owner}) {
    return _Game(
      id: id,
      url: url,
      thumbnailUrl: thumbnailUrl,
      name: name,
      shortDescription: shortDescription,
      description: description,
      minPlayers: minPlayers,
      maxPlayers: maxPlayers,
      owner: owner,
    );
  }

  Game fromJson(Map<String, Object> json) {
    return Game.fromJson(json);
  }
}

/// @nodoc
const $Game = _$GameTearOff();

/// @nodoc
mixin _$Game {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get url => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(defaultValue: '', name: 'description_preview')
  String get shortDescription => throw _privateConstructorUsedError;
  @HiveField(5)
  String get description => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'min_players')
  int? get minPlayers => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'max_players')
  int? get maxPlayers => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(ignore: true)
  User? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
          String id,
      @HiveField(1)
          String url,
      @HiveField(2)
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          String thumbnailUrl,
      @HiveField(3)
          String name,
      @HiveField(4)
      @JsonKey(defaultValue: '', name: 'description_preview')
          String shortDescription,
      @HiveField(5)
          String description,
      @HiveField(6)
      @JsonKey(name: 'min_players')
          int? minPlayers,
      @HiveField(7)
      @JsonKey(name: 'max_players')
          int? maxPlayers,
      @HiveField(8)
      @JsonKey(ignore: true)
          User? owner});

  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  final Game _value;
  // ignore: unused_field
  final $Res Function(Game) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? minPlayers = freezed,
    Object? maxPlayers = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      minPlayers: minPlayers == freezed
          ? _value.minPlayers
          : minPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPlayers: maxPlayers == freezed
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) then) =
      __$GameCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
          String id,
      @HiveField(1)
          String url,
      @HiveField(2)
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          String thumbnailUrl,
      @HiveField(3)
          String name,
      @HiveField(4)
      @JsonKey(defaultValue: '', name: 'description_preview')
          String shortDescription,
      @HiveField(5)
          String description,
      @HiveField(6)
      @JsonKey(name: 'min_players')
          int? minPlayers,
      @HiveField(7)
      @JsonKey(name: 'max_players')
          int? maxPlayers,
      @HiveField(8)
      @JsonKey(ignore: true)
          User? owner});

  @override
  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class __$GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res>
    implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(_Game _value, $Res Function(_Game) _then)
      : super(_value, (v) => _then(v as _Game));

  @override
  _Game get _value => super._value as _Game;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? minPlayers = freezed,
    Object? maxPlayers = freezed,
    Object? owner = freezed,
  }) {
    return _then(_Game(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      minPlayers: minPlayers == freezed
          ? _value.minPlayers
          : minPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPlayers: maxPlayers == freezed
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Game with DiagnosticableTreeMixin implements _Game {
  const _$_Game(
      {@HiveField(0)
          required this.id,
      @HiveField(1)
          required this.url,
      @HiveField(2)
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          required this.thumbnailUrl,
      @HiveField(3)
          required this.name,
      @HiveField(4)
      @JsonKey(defaultValue: '', name: 'description_preview')
          required this.shortDescription,
      @HiveField(5)
          required this.description,
      @HiveField(6)
      @JsonKey(name: 'min_players')
          required this.minPlayers,
      @HiveField(7)
      @JsonKey(name: 'max_players')
          required this.maxPlayers,
      @HiveField(8)
      @JsonKey(ignore: true)
          this.owner});

  factory _$_Game.fromJson(Map<String, dynamic> json) =>
      _$_$_GameFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String url;
  @override
  @HiveField(2)
  @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
  final String thumbnailUrl;
  @override
  @HiveField(3)
  final String name;
  @override
  @HiveField(4)
  @JsonKey(defaultValue: '', name: 'description_preview')
  final String shortDescription;
  @override
  @HiveField(5)
  final String description;
  @override
  @HiveField(6)
  @JsonKey(name: 'min_players')
  final int? minPlayers;
  @override
  @HiveField(7)
  @JsonKey(name: 'max_players')
  final int? maxPlayers;
  @override
  @HiveField(8)
  @JsonKey(ignore: true)
  final User? owner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Game(id: $id, url: $url, thumbnailUrl: $thumbnailUrl, name: $name, shortDescription: $shortDescription, description: $description, minPlayers: $minPlayers, maxPlayers: $maxPlayers, owner: $owner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Game'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('minPlayers', minPlayers))
      ..add(DiagnosticsProperty('maxPlayers', maxPlayers))
      ..add(DiagnosticsProperty('owner', owner));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Game &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.minPlayers, minPlayers) ||
                const DeepCollectionEquality()
                    .equals(other.minPlayers, minPlayers)) &&
            (identical(other.maxPlayers, maxPlayers) ||
                const DeepCollectionEquality()
                    .equals(other.maxPlayers, maxPlayers)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(minPlayers) ^
      const DeepCollectionEquality().hash(maxPlayers) ^
      const DeepCollectionEquality().hash(owner);

  @JsonKey(ignore: true)
  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameToJson(this);
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {@HiveField(0)
          required String id,
      @HiveField(1)
          required String url,
      @HiveField(2)
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          required String thumbnailUrl,
      @HiveField(3)
          required String name,
      @HiveField(4)
      @JsonKey(defaultValue: '', name: 'description_preview')
          required String shortDescription,
      @HiveField(5)
          required String description,
      @HiveField(6)
      @JsonKey(name: 'min_players')
          required int? minPlayers,
      @HiveField(7)
      @JsonKey(name: 'max_players')
          required int? maxPlayers,
      @HiveField(8)
      @JsonKey(ignore: true)
          User? owner}) = _$_Game;

  factory _Game.fromJson(Map<String, dynamic> json) = _$_Game.fromJson;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get url => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(defaultValue: '', name: 'description_preview')
  String get shortDescription => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  String get description => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(name: 'min_players')
  int? get minPlayers => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  @JsonKey(name: 'max_players')
  int? get maxPlayers => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  @JsonKey(ignore: true)
  User? get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameCopyWith<_Game> get copyWith => throw _privateConstructorUsedError;
}
