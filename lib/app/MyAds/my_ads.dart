// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class MyAds extends StatelessWidget {
  const MyAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'MyAds'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                color: AppColors.primaryColor,
                width: double.infinity,
                child: Center(
                  child: TabBar(
                    isScrollable: true,
                    labelColor: AppColors.commonColor,
                    indicatorColor: AppColors.commonColor,
                    unselectedLabelColor: AppColors.blackColor,
                    indicator: BoxDecoration(),
                    tabs: [
                      Tab(text: 'seeAll'.tr),
                      Tab(text: 'Banner'.tr),
                      Tab(text: 'Flyers'.tr),
                      Tab(text: 'popUp'.tr),
                      Tab(text: 'Video'.tr),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 404,
                child: TabBarView(
                  children: [
                    Center(
                      child: AppText(
                        title: 'ComingSoon'.tr,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Column(
                        children: [
                          Bannertitle(),
                          SizedBox(height: 20),
                          Bannertitle(),
                        ],
                      ),
                    ),
                    Center(child: AppText(title: 'ComingSoon'.tr)),
                    Center(child: AppText(title: 'ComingSoon'.tr)),
                    Center(child: AppText(title: 'ComingSoon'.tr)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container Bannertitle() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(ImageConst.image),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'Bannertitle'.tr,
                      fontWeight: FontWeight.w500,
                      color: AppColors.commonColor,
                      size: 15,
                    ),
                    SizedBox(height: 6),
                    AppText(
                      title: 'AddressSouthfraser'.tr,
                      size: 13,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(height: 6),
                    AppText(
                      title: 'dateToDate'.tr,
                      size: 13,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(height: 6),
                    AppText(
                      title: 'timing1112pm'.tr,
                      size: 13,
                      color: AppColors.blackColor,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            AppButton(
              buttonName: 'talkDesigner'.tr,
              color: AppColors.commonColor,
              buttonHeight: 40,
              textSize: 15,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
