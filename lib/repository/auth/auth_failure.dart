import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure implements Exception {
  const factory AuthFailure.systemMemoryFailure() = SystemMemoryFailure;
}
