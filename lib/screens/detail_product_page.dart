import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geektest/models/product_model.dart';
import 'package:geektest/screens/component/custom_appbar.dart';
import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';

class DetailProductPage extends StatelessWidget {
  static const routeName = '/detail-video';
  final ProductModel model;

  const DetailProductPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: CustomAppbar(
        title: model.category ?? '',
      ),
      body: _buildContent(context),
    );
  }

  /** builder method untuk konten secara keseluruhan **/
  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // !_isLoading
          //     ?
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: model.image ?? "",
                    errorWidget: (context, url, error) => SvgPicture.asset(
                      'assets/images/default.svg',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  model.title ?? '',
                  style: TextStyle(
                      color: AppColor.fontDarkGrey,
                      fontWeight: FontWeight.w700,
                      fontSize: FontSize.s20),
                ),
                SizedBox(
                  height: Sizes.s10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  //margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [AppColor.fontGrey, AppColor.fontDarkGrey]),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0,
                          offset: const Offset(0.1, 0.1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange.shade900),
                  child: Text(
                    model.category ?? "",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text('${model.rating!.rate}',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: AppColor.fontDarkGrey,
                              fontSize: FontSize.s15)),
                    ),
                    // Text(tanggal,
                    //     textAlign: TextAlign.start,
                    //     style: const TextStyle(
                    //         fontWeight: FontWeight.w400, fontSize: 12))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  model.description ?? "",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppColor.fontGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
