import 'package:ayopramuka/config/config_apps.dart';

class NetworkHelper {
  static String baseUrl = ConfigApps.instance.baseUrl;
  static String token = ConfigApps.instance.tokenApi;

  static int timeout = 20 * 1000; // 60 seconds

  static int limit = 10;
  static int limit15 = 15;
  static int limitKomentar = 5;
  // status code
  static const success = "1";
  static const statusCode200 = 200;
  static const statusCode204 = 204;
  static const statusCode400 = 400;
  static const statusCode401 = 401;
  static const statusCode403 = 403;
  static const statusCode404 = 404;
  static const statusCode406 = 406;
  static const statusCode425 = 425;
  static const statusCode429 = 429;
  static const statusCode500 = 500;
  static const statusCode503 = 503;
}
