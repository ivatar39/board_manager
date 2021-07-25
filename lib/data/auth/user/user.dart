import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@HiveType(typeId: 0)
class User with _$User {
  const factory User({
    @HiveField(0) required String uniqueId,
    @HiveField(1) required String name,
    @HiveField(2) required bool isAuthorized,
  }) = _User;

  const User._();

  factory User.create({required String name}) => User(
        uniqueId: const Uuid().v4(),
        name: name,
        isAuthorized: true,
      );
}
