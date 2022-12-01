import 'package:geektest/constants/network_helper.dart';
import 'package:dio/dio.dart';

class DioOptions {
  static Options getOptionsWithUserId(String userId, int timeout) {
    return Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': '*/*',
        'userID': userId,
        'Authorization': 'Bearer ' + NetworkHelper.token,
      },
      receiveDataWhenStatusError: true,
      sendTimeout: timeout * 1000, // 60 seconds
      receiveTimeout: timeout * 1000, // 60 seconds
    );
  }

  static Options getOptionsWithHeader(String userId, int timeout) {
    return Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': '*/*',
        'userID': userId,
        'Authorization': 'Bearer ' + NetworkHelper.token,
      },
      receiveDataWhenStatusError: true,
      sendTimeout: timeout * 1000, // 60 seconds
      receiveTimeout: timeout * 1000, // 60 seconds
    );
  }

  static Options getOptions() {
    return Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': '*/*',
        'Authorization': 'Bearer ' + NetworkHelper.token,
      },
      receiveDataWhenStatusError: true,
      sendTimeout: NetworkHelper.timeout, // 60 seconds
      receiveTimeout: NetworkHelper.timeout,
    );
  }
}
