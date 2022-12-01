import 'package:ayopramuka/services/repository/general_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  GeneralRepository repository = GeneralRepository();
  var tabIndex = 0.obs;

  RxInt balonNotification = 0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  Widget page() {
    return SizedBox();
  }

  Widget bottomNavigationBarItem(Widget icon, String labelMenu) {
    return SizedBox(child: bottomNavigationBarItem(icon, labelMenu));
  }
}
