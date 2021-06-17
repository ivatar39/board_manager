import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/collection/collection_wm.dart';
import 'package:board_manager/ui/collection/collection_wm_builder.dart';
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
        title: const Text(kCollection),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => wm.openCatalog(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
