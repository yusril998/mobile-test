import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geektest/models/product_model.dart';
import 'package:geektest/screens/detail_product_page.dart';
import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';
import 'package:get/get.dart';

class ProductItem extends StatelessWidget {
  final ProductModel? model;

  const ProductItem({this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(DetailProductPage.routeName, arguments: model!);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 110,
                  margin: EdgeInsets.only(
                    right: 10,
                    top: 7,
                    bottom: 7,
                    left: 7,
                  ),
                  padding: EdgeInsets.all(Sizes.s10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: model!.image ?? "",
                      errorWidget: (context, url, error) => SvgPicture.asset(
                        'assets/images/default.svg',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [AppColor.fontGrey, AppColor.fontDarkGrey]),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 5.0,
                          offset: const Offset(0.4, 4.4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange.shade900),
                  child: Text(
                    model!.price.toString(),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Container(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 5, top: 20, right: 10),
                      child: Text(
                        model!.title ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: AppColor.fontDarkGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      )),
                  Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 5, right: 10),
                      child: Text(
                        model!.description ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: AppColor.fontGrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      )),
                  Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              margin: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    AppColor.fontGrey,
                                    AppColor.fontDarkGrey
                                  ]),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.shade400,
                                      blurRadius: 5.0,
                                      offset: const Offset(0.4, 4.4),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange.shade900),
                              child: Text(
                                model!.category ?? "",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 10, top: 7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 2, right: Sizes.s5),
                                    child: Icon(
                                      FontAwesomeIcons.star,
                                      size: Sizes.s9,
                                    ),
                                  ),
                                  Text(
                                    model!.rating!.rate.toString(),
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: AppColor.fontDarkGrey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
