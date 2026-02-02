import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(initializerName: 'initGetIt')
Future<void> configureInjection() async {
  await getIt.initGetIt();
}
