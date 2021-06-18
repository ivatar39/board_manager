import 'package:board_manager/repository/core/core_failure.dart';
import 'package:board_manager/ui/core/critical_failure_widget.dart';
import 'package:board_manager/ui/core/no_internet_widget.dart';
import 'package:board_manager/ui/core/server_failure_widget.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  final Exception? exception;
  final Function() onRetry;

  const FailureWidget({
    required this.exception,
    required this.onRetry,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (exception != null && exception is CoreFailure)
          ? (exception as CoreFailure).map(
              checkInternetConnection: (f) => NoInternetWidget(onTap: onRetry),
              serverFailure: (f) => ServerFailureWidget(onTap: onRetry),
            )
          : CriticalFailureWidget(
              onTap: onRetry,
              exception: exception,
            ),
    );
  }
}
