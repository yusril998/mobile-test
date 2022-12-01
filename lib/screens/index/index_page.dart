import 'package:ayopramuka/constants/directory_asset.dart';
import 'package:ayopramuka/controllers/index_controller.dart';

import 'package:ayopramuka/utils/sizes.dart';
import 'package:ayopramuka/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class IndexPage extends StatelessWidget {
  static const routeName = '/index-page';
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IndexController controller = Get.find<IndexController>();

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(bottom: 60),
        child: controller.page(),
      ),
    );
  }
}
