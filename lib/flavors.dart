enum Flavor {
  development,
  staging,
  production,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'Project Setup - DEV';
      case Flavor.staging:
        return 'Project Setup - STAGE';
      case Flavor.production:
        return 'Project Setup';
    }
  }

}
