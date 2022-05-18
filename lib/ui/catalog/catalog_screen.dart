import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/catalog/catalog_game_card.dart';
import 'package:board_manager/ui/catalog/catalog_wm.dart';
import 'package:board_manager/ui/catalog/catalog_wm_builder.dart';
import 'package:board_manager/ui/core/failure_wiget.dart';
import 'package:board_manager/ui/core/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class CatalogScreen extends CoreMwwmWidget<CatalogWidgetModel> {
  const CatalogScreen({Key? key})
      : super(
          key: key,
          widgetModelBuilder: createCatalogWidgetModel,
        );

  @override
  WidgetState<CoreMwwmWidget<CatalogWidgetModel>, CatalogWidgetModel> createWidgetState() {
    return _CatalogScreenState();
  }
}

class _CatalogScreenState extends WidgetState<CatalogScreen, CatalogWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: wm.scaffoldMessengerKey,
      child: Scaffold(
        appBar: _CatalogScreenAppBar(searchController: wm.textEditingSearchController),
        body: EntityStateBuilder<List<Game>>(
          streamedState: wm.catalogState,
          builder: (context, games) {
            if (games.isNotEmpty) {
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
          loadingBuilder: (context, games) => const LoadingWidget(),
          errorBuilder: (context, exception) => FailureWidget(
            exception: exception,
            onRetry: wm.onLoad,
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
