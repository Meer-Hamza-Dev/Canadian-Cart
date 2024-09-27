// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import '../../../../routes/app_pages.dart';

class BannerAdDesign extends StatelessWidget {
  const BannerAdDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Promotebusiness'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 20, 25, 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: 'ViewPromotionCategories'.tr,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 25),
                AppText(
                  title: 'WhatTypeOfAd'.tr,
                  size: 13,
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'BannerDesign'.tr,
                          size: 13,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.commonColor,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                AppText(
                  title: 'BannerDimension'.tr,
                  size: 13,
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  ImageConst.Biryani,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DoubleAppButton(
                    buttonName: 'Createad'.tr,
                    color: AppColors.primaryColor,
                    textColor: AppColors.C9Color,
                    onTap: () {
                      Get.toNamed(Routes.createAdRoute);
                    },
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: DoubleAppButton(
                    buttonName: 'Uploadad'.tr,
                    color: AppColors.commonColor,
                    textColor: AppColors.primaryColor,
                    onTap: () {
                      Get.toNamed(Routes.uploadBannerRoute);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
