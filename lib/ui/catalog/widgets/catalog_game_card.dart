import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CatalogGameCard extends StatelessWidget {
  final Game game;
  final Function() onAddingGame;

  const CatalogGameCard({
    required this.game,
    required this.onAddingGame,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: ListTile(
        leading: CachedNetworkImage(
          imageUrl: game.thumbnailUrl,
          height: 70,
          width: 70,
          progressIndicatorBuilder: (context, url, downloadProgress) => LinearProgressIndicator(
            color: Colors.grey,
            backgroundColor: Colors.grey.shade300,
            value: downloadProgress.progress,
          ),
        ),
        title: Text(game.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              game.shortDescription,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            Visibility(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text('$maxPlayers: ${game.maxPlayers}'),
                  Text('$minPlayers: ${game.minPlayers}'),
                ],
              ),
              visible: game.minPlayers != null && game.maxPlayers != null,
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.add),
          onPressed: onAddingGame,
        ),
      ),
    );
  }
}
