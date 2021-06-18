import 'package:board_manager/repository/core/failure.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure implements Failure {
  const factory AuthFailure.systemMemoryFailure() = SystemMemoryFailure;
}
