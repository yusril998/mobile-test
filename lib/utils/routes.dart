import 'package:geektest/middlewares/auth_middleware.dart';
import 'package:geektest/screens/detail_product_page.dart';
import 'package:geektest/screens/form_product_page.dart';
import 'package:geektest/screens/index/index_page.dart';
import 'package:geektest/screens/splash_page.dart';
import 'package:geektest/screens/welcome_page.dart';
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
      name: IndexPage.routeName,
      page: () => IndexPage(),
      middlewares: middlewares,
    ),
    GetPage(
      name: WelcomePage.routeName,
      page: () => WelcomePage(),
      middlewares: middlewares,
    ),
    GetPage(
      name: FormProductPage.routeName,
      page: () => FormProductPage(),
      middlewares: middlewares,
    ),
    GetPage(
      name: DetailProductPage.routeName,
      page: () => DetailProductPage(
        model: Get.arguments,
      ),
      middlewares: middlewares,
    ),
  ];
}
