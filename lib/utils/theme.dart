// ignore_for_file: deprecated_member_use

import 'package:ayopramuka/constants/text_style.dart';
import 'package:flutter/material.dart';

List<BoxShadow> shadow = <BoxShadow>[
  BoxShadow(
      blurRadius: 10,
      offset: Offset(5, 5),
      color: AppTheme.apptheme.accentColor,
      spreadRadius: 1)
];
String get textdescription {
  return '';
}

TextStyle get onPrimaryTitleText {
  return TextStyle(color: Colors.white, fontWeight: FontWeight.w600);
}

TextStyle get onPrimarySubTitleText {
  return TextStyle(
    color: Colors.white,
  );
}

BoxDecoration softDecoration = BoxDecoration(boxShadow: <BoxShadow>[
  BoxShadow(
      blurRadius: 8,
      offset: Offset(5, 5),
      color: Color(0xffe2e5ed),
      spreadRadius: 5),
  BoxShadow(
      blurRadius: 8,
      offset: Offset(-5, -5),
      color: Color(0xffffffff),
      spreadRadius: 5)
], color: Color(0xfff1f3f6));
TextStyle get titleStyle {
  return TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}

TextStyle get subtitleStyle {
  return TextStyle(
      color: AppColor.darkGrey, fontSize: 14, fontWeight: FontWeight.bold);
}

TextStyle get userNameStyle {
  return TextStyle(
      color: AppColor.darkGrey, fontSize: 11, fontWeight: FontWeight.w500);
}

TextStyle get textStyle14 {
  return TextStyle(
      color: AppColor.darkGrey, fontSize: 14, fontWeight: FontWeight.bold);
}

class AppColor {
  static const Color primary = Color(0xff2A794E);
  static const Color primaryDark = Color(0xff205A3A);
  static const Color blue = Color(0xff058CD8);
  static const Color red = Color(0xffDE4040);
  static const Color lightpurple = Color(0xffBB87CA);
  static const Color secondary = Color(0xff4E312A);
  static const Color darkGrey = Color(0xff1657786);
  static const Color lightGrey = Color(0xffECECEC);
  static const Color extraLightGrey = Color(0xffE1E8ED);
  static const Color extraExtraLightGrey = Color(0xFFFAFAFA);
  static const Color lightGreyBackground = Color(0xFFF1F1F1);
  static const Color white = Color(0xFFffffff);
  static const Color black = Color(0xFF000000);
  static const Color blackTitle = Color(0xFF5E5E5E);
  static const Color blackSubtitle = Color(0xFF878787);
  static const Color blackgrey = Color(0xFF555353);
  static const Color grey = Colors.grey;

  /// shadow
  static const Color lightGreyShadow = Color(0xFFD6D6D6);

  static const MaterialColor purple = MaterialColor(
    0xff2A794E,
    <int, Color>{
      50: Color(0xff2A794E),
      100: Color(0xff2A794E),
      200: Color(0xff2A794E),
      300: Color(0xff2A794E),
      400: Color(0xff2A794E),
      500: Color(0xff2A794E),
      600: Color(0xff2A794E),
      700: Color(0xff2A794E),
      800: Color(0xff2A794E),
      900: Color(0xff2A794E),
    },
  );
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static const MaterialColor brown = MaterialColor(
    0xff4E312A,
    <int, Color>{
      50: Color(0xff4E312A),
      100: Color(0xff4E312A),
      200: Color(0xff4E312A),
      300: Color(0xff4E312A),
      400: Color(0xff4E312A),
      500: Color(0xff4E312A),
      600: Color(0xff4E312A),
      700: Color(0xff4E312A),
      800: Color(0xff4E312A),
      900: Color(0xff4E312A),
    },
  );
}

class AppTheme {
  static final ThemeData apptheme = ThemeData(
    primarySwatch: AppColor.purple,
    fontFamily: 'Poppins',
    androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,

//    backgroundColor: TwitterColor.white,
//    accentColor: AppColor.primary,
//    brightness: Brightness.light,
//    primaryColor: AppColor.primary,
//    cardColor: Colors.white,
//    unselectedWidgetColor: Colors.grey,
//    bottomAppBarColor: Colors.white,
//    bottomSheetTheme: BottomSheetThemeData(
//      backgroundColor: AppColor.white
//    ),
//    appBarTheme: AppBarTheme(
//      brightness: Brightness.light,
//      color: TwitterColor.white,
//      iconTheme: IconThemeData(color: AppColor.primary,),
//      elevation: 0,
//      textTheme:  TextTheme(
//        title: TextStyle(
//          color: Colors.black,
//          fontSize: 26,
//          fontStyle: FontStyle.normal),
//        )),
//        tabBarTheme: TabBarTheme(
//          labelStyle: titleStyle.copyWith(color: AppColor.primary),
//          unselectedLabelColor: AppColor.darkGrey,
//          unselectedLabelStyle: titleStyle.copyWith(color: AppColor.darkGrey),
//          labelColor: AppColor.primary,
//          labelPadding: EdgeInsets.symmetric(vertical: 12),
//        ),
//        floatingActionButtonTheme: FloatingActionButtonThemeData(
//          backgroundColor:   AppColor.primary,
//        ),
//        colorScheme: ColorScheme(
//          background: Colors.white,
//          onPrimary: Colors.white,
//          onBackground: Colors.black,
//          onError: Colors.white,
//          onSecondary: Colors.white,
//          onSurface: Colors.black,
//          error: Colors.red,
//          primary: Colors.blue,
//          primaryVariant: Colors.blue,
//          secondary: AppColor.secondary,
//          secondaryVariant: AppColor.darkGrey,
//          surface: Colors.white,
//          brightness: Brightness.light
//        ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.white,
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: AppColor.primary, // This is a custom color variable
      textStyle: kStylePopMed14,
    )),
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: AppColor.secondary,
      displayColor: AppColor.secondary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColor.primary,
        elevation: 1,
        textStyle: TextTheme().button,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    // fontFamily: 'Poppins'
  );
}
