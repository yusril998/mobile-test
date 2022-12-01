import 'package:ayopramuka/constants/network_helper.dart';
import 'package:ayopramuka/models/product_model.dart';
import 'package:ayopramuka/services/repository/repository.dart';
import 'package:ayopramuka/utils/preferences.dart';
import 'package:dio/dio.dart';

class GeneralRepository extends Repository {
  int limit = NetworkHelper.limit;
  Future<List<ProductModel?>?> getListNotification(int page) async {
    try {
      String? userIdMe = await Preferences.getUserId();
      Response? json = await get(
          "general/notification?userId=$userIdMe&page=$page&limit=$limit");
      print(json);
      List<ProductModel?>? response = [];
      if (json!.statusCode == 200) {
        var rawData = json.data;
        response = productModelFromJson(rawData);
      }

      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<String?> readNotification(String key, String type) async {
    try {
      Map<String, dynamic> body = {"key": key, "type": type};
      Response? resVal = await post("general/notification/read", body);
      if (resVal!.statusCode == 200) {
        return "1";
      } else {
        var response = resVal.data['meta']['message'] ?? " terjadi kesalahan";
        return response;
      }
    } catch (e) {
      throw (e);
    }
  }
}
