import 'package:board_manager/ui/app/translation.dart';
import 'package:flutter/material.dart';

class CollectionMenuButton extends StatefulWidget {
  final Function() onOpenProfile;

  const CollectionMenuButton({
    required this.onOpenProfile,
    Key? key,
  }) : super(key: key);

  @override
  _CollectionMenuButtonState createState() => _CollectionMenuButtonState();
}

class _CollectionMenuButtonState extends State<CollectionMenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: handleSelect,
      itemBuilder: (context) {
        return {profile}
            .map(
              (choice) => PopupMenuItem<String>(
                child: Text(choice),
                value: choice,
              ),
            )
            .toList();
      },
    );
  }

  void handleSelect(String value) {
    switch (value) {
      case profile:
        widget.onOpenProfile();
        break;
    }
  }
}
