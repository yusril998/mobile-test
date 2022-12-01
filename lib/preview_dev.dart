import 'dart:async';
import 'dart:io';

import 'package:ayopramuka/config/config_apps.dart';
import 'package:ayopramuka/constants/enpoint.dart';
import 'package:ayopramuka/my_app.dart';
import 'package:ayopramuka/utils/preferences.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
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
    flavor: Flavor.DEVELOPMENT,
    baseUrl: Endpoint.BASE_URL_DEV,
    tokenApi: Endpoint.TOKEN_DEV,
  );
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    Preferences().init();

    SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
        .then((_) {
      runApp(
        DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => MyApp(), // Wrap your app
        ),
      );
    });
  }, (error, stack) {});
}
