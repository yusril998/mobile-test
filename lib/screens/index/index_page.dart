import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geektest/constants/directory_asset.dart';
import 'package:geektest/controllers/index_controller.dart';
import 'package:geektest/screens/component/cliper.dart';
import 'package:geektest/screens/component/cuatom_title_sliver.dart';
import 'package:geektest/screens/component/custom_refresh.dart';
import 'package:geektest/screens/component/custom_sliverbardelegate.dart';
import 'package:geektest/screens/component/item_product.dart';
import 'package:geektest/screens/form_product_page.dart';
import 'package:geektest/utils/colors.dart';
import 'package:geektest/utils/sizes.dart';
import 'package:get/get.dart';

class IndexPage extends StatelessWidget {
  static const routeName = '/index-page';
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = Get.put(IndexController());
    return Scaffold(
      backgroundColor: AppColor.bacground,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.fontDarkGrey,
        onPressed: () => controller.doAdd(),
        child: Icon(Icons.add),
      ),
      body: CustomRefreshComponentSecond(
        onRefresh: () async {
          await controller.getListFeed();
        },
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                titleSpacing: Sizes.s100,
                title: SABT(
                  child: Text('GEEK TEST MOBILE',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColor.fontDarkGrey,
                      )),
                ),
                expandedHeight: Sizes.s240,
                foregroundColor: AppColor.black100,
                pinned: true,
                centerTitle: true,
                shadowColor: Colors.transparent,
                backgroundColor: AppColor.white,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Image.asset(
                          DirectoryAsset.pattern,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Positioned.fill(
                          child: Padding(
                        padding: EdgeInsets.only(bottom: Sizes.s50),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Test Geek Mobile",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.fontDarkGrey,
                                  fontSize: FontSize.s36)),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: SliverAppBarDelegate(
                  ClipPath(
                    clipper: CurveCliperMission(),
                    child: Container(
                      color: AppColor.white,
                      height: 20,
                      width: double.infinity,
                    ),
                  ),
                ),
                pinned: false,
              ),
            ];
          },
          body: body(),
        ),
      ),
    );
  }

  Widget body() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.s24),
      child: GetBuilder<IndexController>(
        builder: (controller) => ListView.separated(
            itemBuilder: (context, index) {
              // return Text("data");
              return Slidable(
                endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                        // An action can be bigger than the others.
                        flex: 2,
                        backgroundColor: AppColor.blue,
                        foregroundColor: Colors.white,
                        icon: FontAwesomeIcons.pen,
                        label: 'Edit',
                        onPressed: (context) {
                          controller.doEdit(controller.productList[index]!);
                        }),
                    SlidableAction(
                      onPressed: (context) {
                        controller.hapus(controller.productList[index]!.id!);
                      },
                      flex: 2,
                      backgroundColor: AppColor.red,
                      foregroundColor: Colors.white,
                      icon: FontAwesomeIcons.trash,
                      label: 'Hapus',
                    ),
                  ],
                ),

                // The child of the Slidable is what the user sees when the
                // component is not dragged.

                child: ProductItem(
                  model: controller.productList[index],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: Sizes.s10),
            itemCount: controller.productList.length),
      ),
    );
  }

  void doNothing(BuildContext context) {}
}
