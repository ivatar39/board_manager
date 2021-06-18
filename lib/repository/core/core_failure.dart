import 'package:board_manager/repository/core/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'core_failure.freezed.dart';

@freezed
class CoreFailure with _$CoreFailure implements Failure {
  const factory CoreFailure.checkInternetConnection() = CheckInternetConnection;

  const factory CoreFailure.serverFailure(String message) = ServerFailure;
}
