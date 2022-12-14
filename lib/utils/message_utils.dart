import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';
import 'package:geektest/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageUtils {
  static general({required String text}) {
    Get.showSnackbar(GetSnackBar(
      message: "$text",
      isDismissible: true,
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.all(Sizes.s20),
      borderRadius: 10,
      duration: Duration(seconds: 2),
      backgroundColor: AppColor.black,
      snackPosition: SnackPosition.BOTTOM,
    ));
  }

  static success({required String text}) {
    Get.showSnackbar(GetSnackBar(
      message: "$text",
      isDismissible: true,
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.all(Sizes.s20),
      borderRadius: 10,
      duration: Duration(seconds: 2),
      backgroundColor: AppColor.grayedBackground,
      snackPosition: SnackPosition.BOTTOM,
    ));
  }

  static failed({required String text}) {
    Get.showSnackbar(GetSnackBar(
      message: "$text",
      isDismissible: true,
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.all(Sizes.s20),
      borderRadius: 10,
      duration: Duration(seconds: 2),
      backgroundColor: AppColor.red,
      snackPosition: SnackPosition.BOTTOM,
    ));
  }
}
