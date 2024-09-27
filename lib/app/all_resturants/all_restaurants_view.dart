// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/app/home/home.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class AllResturants extends StatelessWidget {
  const AllResturants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Home'.tr,
          imageSuffix: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.walletScreenRoute);
              },
              child: SvgPicture.asset(ImageConst.wallet)),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 10, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'allResturants'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              appField(
                context: context,
                hint: 'searchResturants'.tr,
                hintSize: 13,
                isPrefix: true,
                fillColor: AppColors.primaryColor,
                height: 17,
                prefixWidget: Icon(
                  Icons.search,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.restaurantDetailsRoute);
                      },
                      child: ResturantWidget()),
                  SizedBox(width: 15),
                  ResturantWidget(),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResturantWidget(),
                  SizedBox(height: 15),
                  ResturantWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
