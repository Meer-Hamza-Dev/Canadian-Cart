// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import '../../../../routes/app_pages.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Wishlist'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 20, 25, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: 'Viewallwishlist'.tr,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.commonColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 57),
                        child: AppText(
                          title: 'Product'.tr,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                          size: 11.5,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.transperentColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 26),
                        child: AppText(
                          title: 'StoreRestaurant'.tr,
                          fontWeight: FontWeight.w500,
                          size: 11.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.wishListDetailRoute);
              },
              child: wishlist(),
            ),
            SizedBox(
              height: 15,
            ),
            wishlist(),
            SizedBox(
              height: 15,
            ),
            wishlist(),
          ],
        ),
      ),
    );
  }

  Container wishlist() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    ImageConst.mask1,
                    height: 65,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'OatmealMashroomRice'.tr,
                      fontWeight: FontWeight.w500,
                      size: 10,
                    ),
                    SizedBox(height: 4),
                    AppText(
                      title: 'ThaiFood'.tr,
                      size: 10,
                      color: AppColors.E9grey,
                    ),
                  ],
                ),
              ],
            ),
            AppText(
              title: r'Twentyfive$'.tr,
              color: AppColors.commonColor,
              fontWeight: FontWeight.w600,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}
