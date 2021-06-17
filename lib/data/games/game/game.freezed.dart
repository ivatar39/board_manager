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
      {required String id,
      required String url,
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          required String thumbnailUrl,
      required String name,
      @JsonKey(defaultValue: '', name: 'description_preview')
          required String shortDescription,
      required String description,
      @JsonKey(name: 'min_players')
          required int? minPlayers,
      @JsonKey(name: 'max_players')
          required int? maxPlayers,
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
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'description_preview')
  String get shortDescription => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_players')
  int? get minPlayers => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_players')
  int? get maxPlayers => throw _privateConstructorUsedError;
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
      {String id,
      String url,
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          String thumbnailUrl,
      String name,
      @JsonKey(defaultValue: '', name: 'description_preview')
          String shortDescription,
      String description,
      @JsonKey(name: 'min_players')
          int? minPlayers,
      @JsonKey(name: 'max_players')
          int? maxPlayers,
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
      {String id,
      String url,
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          String thumbnailUrl,
      String name,
      @JsonKey(defaultValue: '', name: 'description_preview')
          String shortDescription,
      String description,
      @JsonKey(name: 'min_players')
          int? minPlayers,
      @JsonKey(name: 'max_players')
          int? maxPlayers,
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
      {required this.id,
      required this.url,
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          required this.thumbnailUrl,
      required this.name,
      @JsonKey(defaultValue: '', name: 'description_preview')
          required this.shortDescription,
      required this.description,
      @JsonKey(name: 'min_players')
          required this.minPlayers,
      @JsonKey(name: 'max_players')
          required this.maxPlayers,
      @JsonKey(ignore: true)
          this.owner});

  factory _$_Game.fromJson(Map<String, dynamic> json) =>
      _$_$_GameFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
  final String thumbnailUrl;
  @override
  final String name;
  @override
  @JsonKey(defaultValue: '', name: 'description_preview')
  final String shortDescription;
  @override
  final String description;
  @override
  @JsonKey(name: 'min_players')
  final int? minPlayers;
  @override
  @JsonKey(name: 'max_players')
  final int? maxPlayers;
  @override
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
      {required String id,
      required String url,
      @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
          required String thumbnailUrl,
      required String name,
      @JsonKey(defaultValue: '', name: 'description_preview')
          required String shortDescription,
      required String description,
      @JsonKey(name: 'min_players')
          required int? minPlayers,
      @JsonKey(name: 'max_players')
          required int? maxPlayers,
      @JsonKey(ignore: true)
          User? owner}) = _$_Game;

  factory _Game.fromJson(Map<String, dynamic> json) = _$_Game.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: kDefaultThumbnailUrl, name: 'thumb_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '', name: 'description_preview')
  String get shortDescription => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'min_players')
  int? get minPlayers => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'max_players')
  int? get maxPlayers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  User? get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameCopyWith<_Game> get copyWith => throw _privateConstructorUsedError;
}
