import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogUtils {
  static showConfirmDialog({
    required String message,
    Function()? onTapYa,
    Function()? onTapNo,
  }) {
    Get.dialog(
      AlertDialog(
        title: Text('Konfirmasi'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: onTapNo ?? () => Get.back(),
            child: Text('Tidak'),
          ),
          TextButton(
            onPressed: onTapYa ?? () => Get.back(),
            child: Text('Ya'),
          ),
        ],
      ),
    );
  }
}
