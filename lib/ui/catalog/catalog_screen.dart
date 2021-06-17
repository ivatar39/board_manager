import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/catalog/catalog_wm.dart';
import 'package:board_manager/ui/catalog/catalog_wm_builder.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(kCatalog),
      ),
    );
  }
}
