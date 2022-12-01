import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';

class CustomButtonPrimary extends StatelessWidget {
  final String text;
  final SvgPicture? svgIcon;
  final Color? color;
  final Color? borderColor;
  final Color? fontColor;
  final Color? shadowColor;
  final Function()? onPress;
  final bool isShadow;
  final EdgeInsetsGeometry? margin;

  CustomButtonPrimary(
      {Key? key,
      required this.text,
      this.svgIcon,
      this.color,
      this.borderColor,
      this.fontColor,
      this.onPress,
      this.isShadow = false,
      this.shadowColor = Colors.transparent,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: isShadow
            ? [
                BoxShadow(
                  color: shadowColor!,
                  spreadRadius: -9,
                  blurRadius: 12,
                  offset: Offset(0, 8), // changes position of shadow
                ),
              ]
            : [],
      ),
      padding: margin ?? EdgeInsets.zero,
      child: OutlinedButton(
        onPressed: onPress,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.s10))),
          side: MaterialStateProperty.all(
              BorderSide(width: 1, color: borderColor ?? Colors.transparent)),
          backgroundColor: MaterialStateProperty.all(color ?? AppColor.ternary),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: Sizes.s15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgIcon ?? SizedBox(),
            if (svgIcon != null)
              SizedBox(
                width: Sizes.s14,
              ),
            Text(
              text,
              style: TextStyle(
                fontSize: FontSize.s16,
                fontWeight: FontWeight.w700,
                color: fontColor ?? AppColor.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
