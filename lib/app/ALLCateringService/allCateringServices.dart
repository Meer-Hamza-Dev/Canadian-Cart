// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class All_Catering_Service extends StatelessWidget {
  const All_Catering_Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'TiffinCatering'.tr,
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
              title: 'ViewCateringServices'.tr,
              fontWeight: FontWeight.w500,
              size: 14,
            ),
            SizedBox(height: 25),
            appField(
              context: context,
              isPrefix: true,
              fillColor: AppColors.primaryColor,
              hint: 'SearchMessage'.tr,
              borderRadius: BorderRadius.circular(12),
              prefixWidget: Icon(
                Icons.search,
                color: AppColors.DescriptionColor,
              ),
              height: 18,
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: 'Popular'.tr,
                  fontWeight: FontWeight.w500,
                  size: 17,
                ),
                AppText(
                  title: 'SeeAll'.tr,
                  fontWeight: FontWeight.w500,
                  color: AppColors.commonColor,
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.cateringDetailRoute);
                  },
                  child: AbCatering(),
                ),
                AbCatering(),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AbCatering(),
                AbCatering(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container AbCatering() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.primaryColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 10, 13, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Image.asset(
                    ImageConst.tiffinBg,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                AppText(
                  title: 'ABCaterings'.tr,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 5),
                AppText(
                  title: 'Alberta'.tr,
                  color: AppColors.DescriptionColor,
                  size: 11,
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.starColor,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.starColor,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.starColor,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.starColor,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.grey,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
