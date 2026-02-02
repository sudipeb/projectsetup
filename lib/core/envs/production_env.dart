import 'package:envied/envied.dart';

import '../constants/env_keys.dart';
import 'env.dart';

part 'production_env.g.dart';

@Envied(name: EnvKeys.prodEnv, path: EnvKeys.prodEnvPath)
class ProductionEnv extends EnvVars {
  @EnviedField(varName: EnvKeys.baseUrlKey, obfuscate: false)
  String baseUrl = _ProductionEnv.baseUrl;
  @EnviedField(varName: EnvKeys.graphEndPointKey, obfuscate: false)
  String graphEndPoint = _ProductionEnv.graphEndPoint;
  @EnviedField(varName: EnvKeys.apiClientId, obfuscate: false)
  String apiClientId = _ProductionEnv.apiClientId;
}
