import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';

final getIt = GetIt.I;

@injectableInit
void configureDependencies() => getIt.init();
