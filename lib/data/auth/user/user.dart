import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @HiveType(typeId: 0, adapterName: 'UserAdapter')
  const factory User({
    @HiveField(0, defaultValue: '') required String uniqueId,
    @HiveField(1) required String name,
    @HiveField(2) required bool isAuthorized,
  }) = _User;

  const User._();

  factory User.create({required String name}) => User(
        uniqueId: const Uuid().v4(),
        name: name,
        isAuthorized: true,
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
