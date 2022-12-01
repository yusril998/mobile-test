import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';

class CustomRefreshComponent extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Future<void> Function() onRefresh;

  CustomRefreshComponent(
      {Key? key, required this.child, required this.onRefresh, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: onRefresh,
      child: child,
      builder:
          (BuildContext context, Widget child, IndicatorController controller) {
        return AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, _) {
            return Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                if (!controller.isIdle)
                  Positioned(
                    top: 35.0 * controller.value,
                    child: SizedBox(
                      height: Sizes.s30,
                      width: Sizes.s30,
                      child: CircularProgressIndicator(
                        color: color ?? AppColor.primary,
                      ),
                    ),
                  ),
                Transform.translate(
                  offset: Offset(0, 100.0 * controller.value),
                  child: child,
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class CustomRefreshComponentSecond extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;
  final Color? color;

  CustomRefreshComponentSecond(
      {Key? key, required this.child, required this.onRefresh, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: onRefresh,
      notificationPredicate: (notification) => notification.depth == 1,
      child: child,
      builder:
          (BuildContext context, Widget child, IndicatorController controller) {
        return AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, _) {
            return Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                if (!controller.isIdle)
                  Positioned(
                    top: 35.0 * controller.value,
                    child: SizedBox(
                      height: Sizes.s30,
                      width: Sizes.s30,
                      child: CircularProgressIndicator(
                        color: color ?? AppColor.primary,
                      ),
                    ),
                  ),
                Transform.translate(
                  offset: Offset(0, 100.0 * controller.value),
                  child: child,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
