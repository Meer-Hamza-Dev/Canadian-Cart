// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import '../../../../routes/app_pages.dart';

class Promote_business extends StatelessWidget {
  const Promote_business({super.key});

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
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 10, 25, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    title: 'ViewPromotionCategories'.tr,
                    fontWeight: FontWeight.w500,
                    size: 13,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.myAdsRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.07),
                            blurRadius: 12,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: AppText(
                          title: 'MyAds'.tr,
                          fontWeight: FontWeight.w500,
                          size: 12.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              AppText(
                title: 'WhatTypeOfAd'.tr,
                size: 13,
              ),
              SizedBox(height: 20),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: AppText(
                        title: 'Selectoption'.tr,
                        size: 13,
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          value: 'BannerDesign'.tr,
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.bannerAdDesignRoute);
                            },
                            child: Column(
                              children: [
                                Center(
                                  child: AppText(
                                    title: 'BannerDesign'.tr,
                                    size: 12,
                                  ),
                                ),
                                Divider(
                                  indent: 60,
                                  endIndent: 60,
                                  thickness: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Flyeraddesign'.tr,
                          child: Column(
                            children: [
                              Center(
                                child: AppText(
                                  title: 'Flyeraddesign'.tr,
                                  size: 12,
                                ),
                              ),
                              Divider(
                                indent: 60,
                                endIndent: 60,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Popupaddesign'.tr,
                          child: Column(
                            children: [
                              Center(
                                child: AppText(
                                  title: 'Popupaddesign'.tr,
                                  size: 12,
                                ),
                              ),
                              Divider(
                                indent: 60,
                                endIndent: 60,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Videoaddesign'.tr,
                          child: Column(
                            children: [
                              Center(
                                child: AppText(
                                  title: 'Videoaddesign'.tr,
                                  size: 12,
                                ),
                              ),
                              Divider(
                                indent: 60,
                                endIndent: 60,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                      ],
                      onChanged: (String? newValue) {},
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      isExpanded: true,
                    ),
                  ),
                ),
              ),
              LottieBuilder.asset(ImageConst.promoteAnim),
              AppText(
                title: 'PromoteDescription'.tr,
                size: 15.5,
                height: 1.8,
              ),
              SizedBox(height: 25),
              AppText(
                title: 'MRAdvertisementplans'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(title: 'SelectPackage'.tr),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: AppColors.commonColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.Yellow,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: SvgPicture.asset(ImageConst.star),
                        ),
                      ),
                      SizedBox(height: 20),
                      BasicPlan(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: SvgPicture.asset(ImageConst.star),
                        ),
                      ),
                      SizedBox(height: 20),
                      BasicPlan(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.StandardGreen,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: SvgPicture.asset(ImageConst.star),
                        ),
                      ),
                      SizedBox(height: 20),
                      BasicPlan(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Column(
                    children: [
                      Image.asset(ImageConst.rectangle),
                      AppText(
                        title: 'PromoteDescription'.tr,
                        size: 14.3,
                        height: 1.8,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      AppText(
                        title: 'Whychoooseus'.tr,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: DoubleAppButton(
                              buttonName: 'GuarantedDelivery'.tr,
                              onTap: () {},
                              color: AppColors.commonColor,
                              textSize: 12,
                              buttonHeight: 57,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: DoubleAppButton(
                              buttonName: 'HigherEngagement'.tr,
                              onTap: () {},
                              color: AppColors.commonColor,
                              textSize: 12,
                              buttonHeight: 57,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: DoubleAppButton(
                              buttonName: 'PersonalizedContent'.tr,
                              onTap: () {},
                              color: AppColors.commonColor,
                              textSize: 12,
                              buttonHeight: 57,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: DoubleAppButton(
                              buttonName: 'ProvenResults'.tr,
                              onTap: () {},
                              color: AppColors.commonColor,
                              textSize: 12,
                              buttonHeight: 57,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      AppText(
                        title: 'HowitWorks'.tr,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 15),
                      Image.asset(
                        ImageConst.work,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column BasicPlan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: 'BasicPlan'.tr,
          size: 23,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 8),
        AppText(
          title: 'BasicDescription'.tr,
          color: AppColors.E9grey,
          size: 15,
          height: 1.8,
        ),
        SizedBox(height: 20),
        Text.rich(
          TextSpan(
            text: r'$29'.tr,
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.w700,
              fontFamily: 'main',
            ),
            children: [
              TextSpan(
                text: 'month'.tr,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: AppColors.E9grey,
                  fontFamily: 'main',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 25),
        Row(
          children: [
            Icon(
              Icons.done,
              color: AppColors.green,
            ),
            SizedBox(width: 20),
            AppText(
              title: 'RapidSharing'.tr,
              size: 15,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Icon(
              Icons.done,
              color: AppColors.green,
            ),
            SizedBox(width: 20),
            AppText(
              title: 'HighConversionrate'.tr,
              size: 15,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Icon(
              Icons.done,
              color: AppColors.green,
            ),
            SizedBox(width: 20),
            AppText(
              title: 'CustomizableUSERLOcation'.tr,
              size: 15,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ],
    );
  }
}
