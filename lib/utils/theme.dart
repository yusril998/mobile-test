import 'package:flutter/material.dart';
import 'package:geektest/utils/colors.dart';

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

class AppTheme {
  static final ThemeData apptheme = ThemeData(
    //primarySwatch: AppColor.primary,
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
