import 'package:envied/envied.dart';

import '../constants/env_keys.dart';
import 'env.dart';

part 'development_env.g.dart';

@Envied(name: EnvKeys.devEnv, path: EnvKeys.devEnvPath)
class DevelopmentEnv extends EnvVars {
  @EnviedField(varName: EnvKeys.baseUrlKey, obfuscate: false)
  String baseUrl = _DevelopmentEnv.baseUrl;
  @EnviedField(varName: EnvKeys.graphEndPointKey, obfuscate: false)
  String graphEndPoint = _DevelopmentEnv.graphEndPoint;
  @EnviedField(varName: EnvKeys.apiClientId, obfuscate: false)
  String apiClientId = _DevelopmentEnv.apiClientId;
}
