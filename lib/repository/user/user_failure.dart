import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure implements Exception {
  const factory UserFailure.userNotAuthorized() = UserNotAuthorized;
}
