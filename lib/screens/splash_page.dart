// ignore_for_file: lines_longer_than_80_chars

import 'package:ayopramuka/constants/directory_asset.dart';
import 'package:ayopramuka/controllers/splash_controller.dart';
import 'package:ayopramuka/utils/sizes.dart';
import 'package:ayopramuka/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/splash-page';
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: AppColor.extraLightGrey,
                      blurRadius: 10,
                      offset: const Offset(0.4, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                    vertical: Sizes.s15, horizontal: Sizes.s30),
                child: Image.asset(
                  DirectoryAsset.logo,
                  height: Sizes.s100,
                ),
              ),
              SizedBox(
                height: Sizes.s20,
              ),
              Obx(
                () => Text(
                  controller.appName.value,
                  style: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: FontSize.s30),
                ),
              )
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: Sizes.s20),
                child: Obx(
                  () => Text(
                    '${controller.appName.value} ${controller.appVersion.value}',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
