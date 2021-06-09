import 'package:board_manager/injection/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
)
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
