abstract class EnvVars {
  String get baseUrl;
  String get graphEndPoint;
  String get apiClientId;
}

class Env extends EnvVars {
  Env._();
  static Env? _instance;
  late EnvVars _env;
  static Env get instance {
    _instance ??= Env._();
    return _instance!;
  }

  void initEnv(EnvVars incomingEnv) => _env = incomingEnv;
  @override
  String get baseUrl => _env.baseUrl;
  @override
  String get graphEndPoint => _env.graphEndPoint;
  @override
  String get apiClientId => _env.apiClientId;
}
