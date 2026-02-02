// ignore: file_names
import 'dart:async';
import 'package:projectsetup/bootstrap.dart';
import 'package:projectsetup/core/envs/env.dart';
import 'package:projectsetup/core/envs/production_env.dart';
import 'package:projectsetup/core/services/logging/logger.dart';

/// Bootstraps project with early initialization
/// with [DevelopmentEnv()] Environment configurations
void main() => runZonedGuarded(() => bootstrap(initEnv: () => Env.instance.initEnv(ProductionEnv())), (
  Object error,
  StackTrace stackTrace,
) {
  AppLogger.logAppError(error, stackTrace);
});
