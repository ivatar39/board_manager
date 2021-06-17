import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/games/game_failure.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/catalog/catalog_game_card.dart';
import 'package:board_manager/ui/catalog/catalog_wm.dart';
import 'package:board_manager/ui/core/no_internet_widget.dart';
import 'package:board_manager/ui/core/server_failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class CatalogBody extends StatefulWidget {
  final CatalogWidgetModel wm;
  const CatalogBody({
    required this.wm,
    Key? key,
  }) : super(key: key);

  @override
  _CatalogBodyState createState() => _CatalogBodyState();
}

class _CatalogBodyState extends State<CatalogBody> {
  @override
  Widget build(BuildContext context) {
    return EntityStateBuilder<List<Game>>(
      streamedState: widget.wm.catalogState,
      builder: (context, games) {
        if (games.isNotEmpty) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: games.length,
            itemBuilder: (context, index) {
              final game = games[index];
              return CatalogGameCard(
                game: game,
                key: Key(game.id),
              );
            },
          );
        }
        return const Center(child: Text(kNoResults));
      },
      loadingBuilder: (context, games) {
        return const Center(child: CircularProgressIndicator());
      },
      errorBuilder: (context, exception) {
        if (exception is GameFailure) {
          return exception.map(
            checkInternetConnection: (_) => NoInternetWidget(
              onTap: () async {
                await widget.wm.onLoad();
              },
            ),
            serverFailure: (f) => ServerFailureWidget(
              onTap: () async {
                await widget.wm.onLoad();
              },
              message: f.message,
            ),
          );
        }
        return ServerFailureWidget(
          onTap: () async {
            await widget.wm.onLoad();
          },
        );
      },
    );
  }
}
