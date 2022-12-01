import 'package:geektest/screens/splash_page.dart';
import 'package:geektest/utils/routes.dart';
import 'package:geektest/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.apptheme,
      initialRoute: SplashPage.routeName,
      getPages: Routes.pages,
    );
  }
}
