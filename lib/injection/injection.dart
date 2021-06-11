import 'package:board_manager/injection/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
)
Future<void> configureInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}
