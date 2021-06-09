import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:flutter/foundation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
@HiveType(typeId: 0)
class User with _$User {
  const factory User({
    @HiveField(0) required String uniqueId,
    @HiveField(1) required String name,
  }) = _User;
}
