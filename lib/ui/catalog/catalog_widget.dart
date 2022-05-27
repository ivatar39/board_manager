import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/catalog/catalog_widget_model.dart';
import 'package:board_manager/ui/catalog/widgets/catalog_game_card.dart';
import 'package:board_manager/ui/core/failure_wiget.dart';
import 'package:board_manager/ui/core/loading_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class CatalogWidget extends ElementaryWidget<ICatalogWidgetModel> {
  const CatalogWidget({
    Key? key,
  }) : super(key: key, catalogWidgetModelFactory);

  @override
  Widget build(ICatalogWidgetModel wm) {
    return ScaffoldMessenger(
      key: wm.scaffoldMessengerKey,
      child: Scaffold(
        appBar: _CatalogScreenAppBar(searchController: wm.textEditingSearchController),
        body: EntityStateNotifierBuilder<List<Game>>(
          listenableEntityState: wm.catalogState,
          builder: (context, games) {
            if (games!.isNotEmpty) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: games.length,
                itemBuilder: (context, index) {
                  final game = games[index];
                  return CatalogGameCard(
                    game: game,
                    onAddingGame: () async {
                      await wm.addGamePressed(game);
                    },
                  );
                },
              );
            }
            return const Center(child: Text(noResults));
          },
          loadingBuilder: (_, __) => const LoadingWidget(),
          errorBuilder: (_, exception, ___) => FailureWidget(
            exception: exception,
            onRetry: wm.onRetryPressed,
          ),
        ),
      ),
    );
  }
}

class _CatalogScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController searchController;

  @override
  Size get preferredSize => const Size(double.infinity, 100);

  const _CatalogScreenAppBar({
    required this.searchController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(catalog),
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredBox(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  child: TextFormField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      hintText: startSearching,
                      suffixIcon: Icon(Icons.search),
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  height: 30,
                  width: 300,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
