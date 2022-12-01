import 'package:ayopramuka/middlewares/auth_middleware.dart';
import 'package:ayopramuka/screens/splash_page.dart';
import 'package:ayopramuka/screens/welcome_page.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetMiddleware> middlewares = [AuthMiddlewares()];

  static final pages = [
    GetPage(
      name: SplashPage.routeName,
      page: () => SplashPage(),
      middlewares: middlewares,
    ),
    GetPage(
      name: WelcomePage.routeName,
      page: () => WelcomePage(),
      middlewares: middlewares,
    ),
  ];
}
