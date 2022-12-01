import 'package:geektest/screens/index/index_page.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashController extends GetxController {
  RxString appName = ''.obs;

  RxString appVersion = ''.obs;
  @override
  void onInit() {
    initialFuncting();
    super.onInit();
  }

  initialFuncting() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    appName.value = packageInfo.appName;
    appVersion.value = packageInfo.version;

    Future.delayed(Duration(seconds: 3)).then((_) async {
      Get.offAllNamed(IndexPage.routeName);
    });
  }
}
