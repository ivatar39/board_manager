import 'package:board_manager/ui/app/translation.dart';
import 'package:flutter/material.dart';

class ServerFailureWidget extends StatelessWidget {
  final Function() onTap;
  final String? message;

  const ServerFailureWidget({
    required this.onTap,
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.warning, size: 100),
        const SizedBox(height: 18),
        const Text(serverError),
        Visibility(
          visible: message != null,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text('$additionalInformation: '),
                Text(
                  message ?? '',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: onTap,
          child: const Text(retry),
        ),
      ],
    );
  }
}
