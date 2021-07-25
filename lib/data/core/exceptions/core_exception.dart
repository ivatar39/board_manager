import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_exception.freezed.dart';

@freezed
class CoreException with _$CoreException implements Exception {
  const factory CoreException.noInternetConnection() = NoInternetConnection;

  const factory CoreException.timeOutException() = TimeOutException;

  const factory CoreException.serverException(String message) = ServerException;
}
