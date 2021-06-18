import 'package:board_manager/ui/app/translation.dart';
import 'package:flutter/material.dart';

class CriticalFailureWidget extends StatelessWidget {
  final Function() onTap;
  final Exception? exception;

  const CriticalFailureWidget({
    required this.onTap,
    Key? key,
    this.exception,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.warning, size: 100, color: Colors.red),
        const SizedBox(height: 18),
        const Text(criticalError),
        Visibility(
          visible: exception != null,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text('$additionalInformation: '),
                Text(
                  exception.toString(),
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
