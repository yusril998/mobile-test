import 'dart:async';
import 'dart:io';

import 'package:geektest/config/config_apps.dart';
import 'package:geektest/constants/enpoint.dart';
import 'package:geektest/my_app.dart';
import 'package:geektest/utils/preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHttpoverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  // HttpOverrides.global = new MyHttpoverrides();
  ConfigApps(
    flavor: Flavor.PRODUCTION,
    baseUrl: Endpoint.BASE_URL_PROD,
    tokenApi: Endpoint.TOKEN_PROD,
  );
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Preferences().init();
    SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
        .then((_) {
      runApp(MyApp());
    });
  }, (error, stack) {});
}
