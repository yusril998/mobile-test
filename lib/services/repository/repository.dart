// ignore_for_file: unused_catch_clause

import 'dart:async';

import 'package:ayopramuka/constants/network_helper.dart';
import 'package:ayopramuka/services/repository/dio_options.dart';
import 'package:ayopramuka/utils/preferences.dart';
import 'package:ayopramuka/utils/utility.dart';
import 'package:dio/dio.dart';

class Repository {
  Future<Response?> get(String url, {bool withBaseUrl = true}) async {
    try {
      var urlRequest = withBaseUrl ? NetworkHelper.baseUrl + url : url;

      cprint(urlRequest, event: "api $urlRequest");
      String? userId = await Preferences.getUserId() ?? "";
      int timeout = 20;
      Response json = await Dio()
          .get(urlRequest,
              options: DioOptions.getOptionsWithUserId(userId, timeout))
          .timeout(Duration(seconds: timeout));

      cprint(json, event: "Repsonse api $urlRequest");
      return json;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Exception("Connection  Timeout Exception");
      } else if (e.response != null) {
        var rawData = e.response;
        cprint(rawData, errorIn: "erro");
        var response = rawData!.data['meta']['message'] ?? " terjadi kesalahan";
        throw response;
      } else {
        throw e.message;
      }
    } on TimeoutException catch (e) {
      throw "proses terlalu lama $e";
    } catch (e) {
      throw "terjadi kesalahan : ${e.toString()}";
    }
  }

  Future<Response?> post(String url, Map<String, dynamic> body,
      {bool withBaseUrl = true}) async {
    try {
      String? userId = await Preferences.getUserId() ?? "";
      var urlRequest = withBaseUrl ? NetworkHelper.baseUrl + url : url;

      cprint(body, event: "Body api $urlRequest");
      int timeout = 20;
      FormData formData = FormData.fromMap(body);

      Response json = await Dio()
          .post(urlRequest,
              options: DioOptions.getOptionsWithUserId(userId, timeout),
              data: formData)
          .timeout(Duration(seconds: timeout));

      cprint(json, event: "Repsonse api $urlRequest");
      return json;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Exception("Connection  Timeout Exception");
      } else if (e.response != null) {
        var rawData = e.response;
        cprint(rawData!.data, event: "Repsonse error");
        var response = rawData.data['meta']['message'] ?? " terjadi kesalahan";
        throw response;
      } else {
        throw e.message;
      }
    } on TimeoutException catch (e) {
      throw "proses terlalu lama";
    } catch (e) {
      throw "terjadi kesalahan : ${e.toString()}";
    }
  }

  Future<Response?> put(String url, Map<String, dynamic> body,
      {bool withBaseUrl = true}) async {
    try {
      int timeout = 20;
      String? userId = await Preferences.getUserId() ?? "";
      var urlRequest = withBaseUrl ? NetworkHelper.baseUrl + url : url;
      var formData = body;

      Response json = await Dio()
          .put(urlRequest,
              options: DioOptions.getOptionsWithUserId(userId, timeout),
              data: formData)
          .timeout(Duration(seconds: timeout));
      cprint(body, event: "Body api $urlRequest");
      cprint(json, event: "Repsonse api $urlRequest");
      return json;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Exception("Connection  Timeout Exception");
      } else if (e.response != null) {
        var rawData = e.response;
        var response = rawData!.data['meta']['message'] ?? " terjadi kesalahan";
        throw response;
      } else {
        throw e.message;
      }
    } on TimeoutException catch (e) {
      throw "proses terlalu lama";
    } catch (e) {
      throw "terjadi kesalahan : ${e.toString()}";
    }
  }

  Future<Response?> delete(String url, Map<String, dynamic> body,
      {bool withBaseUrl = true}) async {
    try {
      int timeout = 20;
      String? userId = await Preferences.getUserId() ?? "";
      var urlRequest = withBaseUrl ? NetworkHelper.baseUrl + url : url;
      FormData formData = FormData.fromMap(body);
      Response json = await Dio()
          .delete(urlRequest,
              options: DioOptions.getOptionsWithUserId(userId, timeout),
              data: formData)
          .timeout(Duration(seconds: timeout));
      cprint(body, event: "Body api $urlRequest");
      cprint(json, event: "Repsonse api $urlRequest");
      // response = FeedModel.listDummyFeed();
      return json;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        throw Exception("Connection  Timeout Exception");
      } else if (e.response != null) {
        var rawData = e.response;
        var response =
            rawData!.data; //['meta']['message'] ?? " terjadi kesalahan";
        throw response;
      } else {
        throw e.message;
      }
    } on TimeoutException catch (e) {
      throw "proses terlalu lama";
    } catch (e) {
      throw "terjadi kesalahan : ${e.toString()}";
    }
  }
}
