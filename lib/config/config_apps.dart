enum Flavor { DEVELOPMENT, PRODUCTION }

class ConfigApps {
  final Flavor flavor;
  final String baseUrl;
  final String tokenApi;

  static ConfigApps? _instance;

  factory ConfigApps({
    required Flavor flavor,
    required String baseUrl,
    required String tokenApi,
  }) {
    if (_instance == null) {
      _instance = ConfigApps._create(
        flavor,
        baseUrl,
        tokenApi,
      );
    }
    return _instance!;
  }

  ConfigApps._create(this.flavor, this.baseUrl, this.tokenApi);

  static ConfigApps get instance {
    return _instance!;
  }

  static bool isProduction() => _instance!.flavor == Flavor.PRODUCTION;
  static bool isStaging() => _instance!.flavor == Flavor.DEVELOPMENT;
}
