import 'dart:async';
import 'dart:io';

import 'package:ayopramuka/config/config_apps.dart';
import 'package:ayopramuka/constants/enpoint.dart';
import 'package:ayopramuka/my_app.dart';
import 'package:ayopramuka/utils/preferences.dart';
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
    ByteData data =
        await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
    SecurityContext.defaultContext
        .setTrustedCertificatesBytes(data.buffer.asUint8List());
    Preferences().init();

    SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
        .then((_) {
      runApp(MyApp());
    });
  }, (error, stack) {});
}
