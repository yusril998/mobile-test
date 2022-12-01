import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';
import 'package:geektest/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LoadingUtils {
  static showLoading() {
    Get.dialog(
      Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 25),
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              alignment: Alignment.center,
              child: GetPlatform.isIOS
                  ? CupertinoActivityIndicator(radius: 20)
                  : SpinKitChasingDots(
                      color: AppColor.white,
                      size: Sizes.s50,
                    ),
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static Future<void> hideLoader() async {
    if (Get.isDialogOpen!) Get.back();
  }
}
