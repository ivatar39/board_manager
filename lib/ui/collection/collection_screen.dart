import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/collection/collection_menu_button.dart';
import 'package:board_manager/ui/collection/collection_wm.dart';
import 'package:board_manager/ui/collection/collection_wm_builder.dart';
import 'package:board_manager/ui/core/failure_wiget.dart';
import 'package:board_manager/ui/core/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class CollectionScreen extends CoreMwwmWidget<CollectionWidgetModel> {
  const CollectionScreen({Key? key})
      : super(
          key: key,
          widgetModelBuilder: createCollectionWidgetModel,
        );

  @override
  WidgetState<CoreMwwmWidget<CollectionWidgetModel>, CollectionWidgetModel> createWidgetState() {
    return _CollectionScreenState();
  }
}

class _CollectionScreenState extends WidgetState<CollectionScreen, CollectionWidgetModel> {
  @override
  Widget build(BuildContext context) {
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
      body: EntityStateBuilder<List<Game>>(
        streamedState: wm.collectionState,
        builder: (context, games) {
          if (games.isNotEmpty) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: games.length,
              itemBuilder: (context, index) {
                final game = games[index];
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
        loadingBuilder: (context, games) => const LoadingWidget(),
        errorBuilder: (context, exception) => FailureWidget(
          exception: exception,
          onRetry: wm.onLoad,
        ),
      ),
    );
  }
}
