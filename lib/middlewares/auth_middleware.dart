import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddlewares extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
    return super.redirectDelegate(route);
  }

  @override
  RouteSettings? redirect(String? route) {
    return super.redirect(route);
  }
}
