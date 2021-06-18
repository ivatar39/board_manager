import 'package:board_manager/ui/app/translation.dart';
import 'package:flutter/material.dart';

class NoInternetWidget extends StatelessWidget {
  final Function() onTap;

  const NoInternetWidget({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.signal_wifi_connected_no_internet_4,
            size: 100,
          ),
          const SizedBox(height: 18),
          const Text(noConnection),
          TextButton(
            onPressed: onTap,
            child: const Text(retry),
          ),
        ],
      ),
    );
  }
}
