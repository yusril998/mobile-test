import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:geektest/constants/network_helper.dart';
import 'package:geektest/models/product_model.dart';
import 'package:geektest/services/repository/repository.dart';

class GeneralRepository extends Repository {
  int limit = NetworkHelper.limit;
  Future<List<ProductModel?>?> getListProduct() async {
    try {
      Response? json = await get("products");
      print(json);
      List<ProductModel?>? response = [];
      if (json!.statusCode == 200) {
        var rawData = json.data;
        rawData.forEach((val) {
          if (val != null) {
            response.add(ProductModel.fromJson(val));
          }
        });
      }

      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<void> saveProduct({
    String title = '',
    String price = '',
    String description = '',
    String image = '',
    String category = '',
  }) async {
    try {
      Map<String, dynamic> body = {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category
      };
      Response? resVal = await post("products", body);
      if (resVal!.statusCode == 200) {
        log(resVal.data.toString());
      }
    } catch (e) {
      throw (e);
    }
  }

  Future<void> editProduct(
    int id, {
    String title = '',
    String price = '',
    String description = '',
    String image = '',
    String category = '',
  }) async {
    try {
      Map<String, dynamic> body = {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category
      };
      Response? resVal = await put("products/$id", body);
      if (resVal!.statusCode == 200) {
        log(resVal.data.toString());
      }
    } catch (e) {
      throw (e);
    }
  }

  Future<void> deleteProduct(int id) async {
    try {
      Response? resVal = await delete("products/$id", {});
      if (resVal!.statusCode == 200) {
        log(resVal.data.toString());
      }
    } catch (e) {
      throw (e);
    }
  }
}
