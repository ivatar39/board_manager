import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/collection/collection_widget_model.dart';
import 'package:board_manager/ui/collection/collection_widget_model_builder.dart';
import 'package:board_manager/ui/collection/widgets/collection_menu_button.dart';
import 'package:board_manager/ui/core/failure_wiget.dart';
import 'package:board_manager/ui/core/loading_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class CollectionWidget extends ElementaryWidget<ICollectionWidgetModel> {
  const CollectionWidget({
    Key? key,
  }) : super(key: key, buildCollectionWidgetModel);

  @override
  Widget build(ICollectionWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(collection),
        actions: [
          CollectionMenuButton(
            onOpenProfile: () => wm.openProfile(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => wm.openCatalog(),
        child: const Icon(Icons.add),
      ),
      body: EntityStateNotifierBuilder<Iterable<Game>>(
        listenableEntityState: wm.collectionState,
        builder: (_, games) {
          if (games!.isNotEmpty) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: games.length,
              itemBuilder: (_, index) {
                final game = games.elementAt(index);
                return ListTile(
                  title: Text(game.name),
                  trailing: DropdownButton<String>(
                    value: game.owner?.name ?? noOwner,
                    onChanged: (newOwnerName) => wm.changeGameOwner(game, newOwnerName ?? noOwner),
                    items: wm.getUserNamesAndEmptyName().map<DropdownMenuItem<String>>(
                      (name) {
                        return DropdownMenuItem<String>(
                          child: Text(name),
                          value: name,
                        );
                      },
                    ).toList(),
                  ),
                );
              },
            );
          }
          return const Center(child: Text(emptyCollection));
        },
        loadingBuilder: (_, __) => const LoadingWidget(),
        errorBuilder: (_, exception, ___) => FailureWidget(
          exception: exception,
          onRetry: wm.onRetryPressed,
        ),
      ),
    );
  }
}
