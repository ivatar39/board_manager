import 'package:surf_mwwm/surf_mwwm.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';

class CollectionWidgetModel extends WidgetModel {
  final AppRouter _router;

  CollectionWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._router,
  ) : super(baseDependencies);

  void openCatalog() {
    _router.push(const CatalogScreenRoute());
  }

  void openProfile() {
    _router.push(const ProfileScreenRoute());
  }
}
