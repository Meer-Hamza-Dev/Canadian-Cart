// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';
import 'package:get/get.dart';

class Coupons extends StatelessWidget {
  const Coupons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Home'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SafeArea(
        minimum: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: 'AllRestaurantCoupons'.tr,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 15,
            ),
            appField(
              context: context,
              hint: 'SearchCoupons'.tr,
              isPrefix: true,
              fillColor: AppColors.primaryColor,
              prefixWidget: Icon(
                Icons.search,
                color: AppColors.grey,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Coupon(),
            SizedBox(
              height: 25,
            ),
            Coupon(),
          ],
        ),
      ),
    );
  }

  Coupon() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.07),
            offset: Offset(0, 3),
            blurRadius: 19,
          ),
        ],
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 20),
              child: Stack(
                alignment: Alignment.topRight,
                clipBehavior: Clip.none,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: 'Percnt10'.tr,
                            fontWeight: FontWeight.w600,
                            size: 22,
                            color: AppColors.commonColor,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          AppText(
                            title: 'Off'.tr,
                            fontWeight: FontWeight.w500,
                            size: 18,
                            color: AppColors.commonColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      AppText(
                        title: 'Zaika'.tr,
                        size: 20,
                        color: AppColors.commonColor,
                      ),
                    ],
                  ),
                  Positioned(
                    top: -20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.commonColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(9),
                          bottomLeft: Radius.circular(9),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 25, bottom: 25, left: 15, right: 15),
                        child: AppText(
                          title: 'ShopNOW'.tr,
                          color: AppColors.primaryColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    color: AppColors.Greylight2,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.blackColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(54, 15, 54, 15),
                    child: AppText(
                      title: 'CodeFlat'.tr,
                      color: AppColors.primaryColor,
                      size: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  height: 40,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                    ),
                    color: AppColors.Greylight2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              ImageConst.Barcode,
              height: 50,
              width: 120,
            ),
          ],
        ),
      ),
    );
  }
}
