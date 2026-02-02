import 'package:envied/envied.dart';

import '../constants/env_keys.dart';
import 'env.dart';

part 'staging_env.g.dart';

@Envied(name: EnvKeys.stageEnv, path: EnvKeys.stageEnvPath)
class StagingEnv extends EnvVars {
  @EnviedField(varName: EnvKeys.baseUrlKey, obfuscate: false)
  String baseUrl = _StagingEnv.baseUrl;
  @EnviedField(varName: EnvKeys.graphEndPointKey, obfuscate: false)
  String graphEndPoint = _StagingEnv.graphEndPoint;
  @EnviedField(varName: EnvKeys.apiClientId, obfuscate: false)
  String apiClientId = _StagingEnv.apiClientId;
}
