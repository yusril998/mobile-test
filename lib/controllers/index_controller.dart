import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geektest/models/product_model.dart';
import 'package:geektest/screens/form_product_page.dart';
import 'package:geektest/services/repository/general_repository.dart';
import 'package:geektest/utils/loader.dart';
import 'package:geektest/utils/message_utils.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  GeneralRepository repository = GeneralRepository();

  var isBusy = false.obs;
  var productList = <ProductModel?>[].obs;
  var productDetail;
  var title = TextEditingController();
  var price = TextEditingController();
  var description = TextEditingController();
  var image = TextEditingController();
  var category = TextEditingController();

  @override
  Future<void> onInit() async {
    getListFeed();
    super.onInit();
  }

  Future<void> getListFeed() async {
    try {
      isBusy.value = true;
      var response = await repository.getListProduct();
      productList = (response ?? []).obs;
      isBusy.value = false;
      update();
    } catch (ex) {
      log(ex.toString());
      isBusy.value = false;
    }
  }

  Future<void> simpan() async {
    LoadingUtils.showLoading();
    try {
      if (productDetail != null) {
        await repository.editProduct(productDetail.id,
            title: title.text,
            price: price.text,
            description: description.text,
            image: image.text,
            category: category.text);
      } else {
        await repository.saveProduct(
            title: title.text,
            price: price.text,
            description: description.text,
            image: image.text,
            category: category.text);
      }

      await getListFeed();
      await LoadingUtils.hideLoader();

      Get.back();
    } catch (e) {
      await LoadingUtils.hideLoader();
      MessageUtils.general(text: e.toString());
    }
  }

  doEdit(ProductModel model) {
    productDetail = model;
    title.text = model.title ?? '';
    price.text = model.price.toString();
    description.text = model.description ?? '';
    image.text = model.image ?? '';
    category.text = model.category ?? '';
    Get.toNamed(FormProductPage.routeName);
  }

  doAdd() {
    productDetail = null;
    title.clear();
    price.clear();
    description.clear();
    image.clear();
    category.clear();
    Get.toNamed(FormProductPage.routeName);
  }

  Future<void> edit() async {
    LoadingUtils.showLoading();
    try {
      await repository.editProduct(productDetail.id,
          title: title.text,
          price: price.text,
          description: description.text,
          image: image.text,
          category: category.text);

      await getListFeed();
      await LoadingUtils.hideLoader();

      Get.back();
    } catch (e) {
      await LoadingUtils.hideLoader();
      MessageUtils.general(text: e.toString());
    }
  }

  Future<void> hapus(int id) async {
    LoadingUtils.showLoading();
    try {
      await repository.deleteProduct(id);

      await getListFeed();
      await LoadingUtils.hideLoader();
    } catch (e) {
      await LoadingUtils.hideLoader();
      MessageUtils.general(text: e.toString());
    }
  }
}
