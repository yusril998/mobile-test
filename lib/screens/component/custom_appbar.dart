import 'package:flutter/material.dart';
import 'package:geektest/constants/directory_asset.dart';
import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? prefixTitle;
  final Function()? onClickPrefix;
  final Widget? actionIcon;
  final bool enableLogo;
  final Function()? onClickAction;
  final Function()? onClickBack;

  const CustomAppbar({
    Key? key,
    required this.title,
    this.prefixTitle,
    this.onClickPrefix,
    this.actionIcon,
    this.enableLogo = true,
    this.onClickAction,
    this.onClickBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColor.bacground,
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: AppBar(
          backgroundColor: AppColor.white,
          foregroundColor: AppColor.fontDarkGrey,
          iconTheme: IconThemeData(color: AppColor.fontDarkGrey),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          titleSpacing: 0,
          title: Text(title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColor.fontDarkGrey,
              )),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
