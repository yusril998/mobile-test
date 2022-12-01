import 'package:flutter/material.dart';
import 'package:geektest/controllers/index_controller.dart';
import 'package:geektest/screens/component/custom_appbar.dart';
import 'package:geektest/screens/component/custom_button_primary.dart';
import 'package:geektest/screens/component/custom_text_field.dart';
import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';
import 'package:get/get.dart';

class FormProductPage extends StatelessWidget {
  static const routeName = '/form-product';

  const FormProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IndexController controller = Get.find<IndexController>();
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Form Product',
      ),
      body: GestureDetector(
          onTap: () => Get.focusScope!.unfocus(),
          child: ListView(
            padding: EdgeInsets.only(left: 16, right: 16, top: 24),
            children: [
              SizedBox(height: Sizes.s12),
              Text(
                'Judul',
                style: TextStyle(
                  color: AppColor.fontDarkGrey,
                  fontSize: FontSize.s15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Sizes.s6),
              CustomTextFieldV2(
                controller: controller.title,
                hint: 'Masukkan Judul',
                inputAction: TextInputAction.next,
              ),
              SizedBox(height: Sizes.s12),
              Text(
                'Harga',
                style: TextStyle(
                  color: AppColor.fontDarkGrey,
                  fontSize: FontSize.s15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Sizes.s6),
              CustomTextFieldV2(
                controller: controller.price,
                hint: 'Masukkan Harga',
                inputAction: TextInputAction.next,
              ),
              SizedBox(height: Sizes.s12),
              Text(
                'Deskripsi',
                style: TextStyle(
                  color: AppColor.fontDarkGrey,
                  fontSize: FontSize.s15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Sizes.s6),
              CustomTextFieldV2(
                controller: controller.description,
                hint: 'Masukkan Deskripsi',
                inputAction: TextInputAction.next,
              ),
              SizedBox(height: Sizes.s12),
              Text(
                'Gambar',
                style: TextStyle(
                  color: AppColor.fontDarkGrey,
                  fontSize: FontSize.s15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Sizes.s6),
              CustomTextFieldV2(
                controller: controller.image,
                hint: 'Masukkan Link Gambar',
                inputAction: TextInputAction.next,
              ),
              SizedBox(height: Sizes.s12),
              Text(
                'Kategori',
                style: TextStyle(
                  color: AppColor.fontDarkGrey,
                  fontSize: FontSize.s15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Sizes.s6),
              CustomTextFieldV2(
                controller: controller.category,
                hint: 'Masukkan Kategori',
                inputAction: TextInputAction.next,
              ),
              SizedBox(height: Sizes.s40),
              CustomButtonPrimary(
                  text: 'Simpan',
                  color: AppColor.fontDarkGrey,
                  onPress: () => controller.simpan())
            ],
          )),
    );
  }
}
