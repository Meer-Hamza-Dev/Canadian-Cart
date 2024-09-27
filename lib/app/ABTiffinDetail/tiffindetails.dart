// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class Tiffin_Details extends StatelessWidget {
  const Tiffin_Details({super.key});

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
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'AbTiffinDetail'.tr,
                fontWeight: FontWeight.w500,
                size: 14,
              ),
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(
                      ImageConst.homeImage1,
                      width: 365,
                      height: 147,
                      fit: BoxFit.cover,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.tiffinReweisRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(11),
                            bottomRight: Radius.circular(11),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 14, 30, 14),
                          child: AppText(
                            title: 'Reviews'.tr,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                            size: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    title: 'ABTiffin'.tr,
                    fontWeight: FontWeight.w500,
                    size: 14,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.starColor,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.starColor,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.starColor,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.starColor,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      AppText(
                        title: 'r45'.tr,
                        color: AppColors.DescriptionColor,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 22),
              Text.rich(
                TextSpan(
                  text: 'Type'.tr,
                  style: TextStyle(
                    fontFamily: 'main',
                    color: AppColors.DescriptionColor,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: 'Tiffinservice'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: 'Timing'.tr,
                  style: TextStyle(
                    fontFamily: 'main',
                    color: AppColors.DescriptionColor,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: 'E11AM11PM'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: 'TotalCustomer'.tr,
                  style: TextStyle(
                    fontFamily: 'main',
                    fontWeight: FontWeight.w300,
                    color: AppColors.DescriptionColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'Seven80'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22),
              AppText(
                title: 'Venue'.tr,
                fontWeight: FontWeight.w500,
                size: 14,
              ),
              SizedBox(height: 20),
              Container(
                height: 110,
                width: double.infinity,
                color: AppColors.primaryColor,
                child: Center(child: Text('Google Map Here')),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'MyPackages'.tr,
                fontWeight: FontWeight.w500,
                size: 14,
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.basicPackageRoute);
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.Yellow,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 80, 15, 15),
                        child: Menu(),
                      ),
                    ),
                    Positioned(
                      right: 30,
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: AppColors.Yellow,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Column(
                            children: [
                              AppText(
                                title: 'Basicpackage'.tr,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 5),
                              AppText(
                                title: 'TwoKSales'.tr,
                                size: 13,
                              ),
                              SizedBox(height: 5),
                              AppText(
                                title: r'SixSixtyM$'.tr,
                                fontWeight: FontWeight.w700,
                                size: 18,
                                color: AppColors.commonColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.commonColor,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 80, 15, 15),
                      child: Menu(),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.commonColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Column(
                          children: [
                            AppText(
                              title: 'PremiumPackage'.tr,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(height: 5),
                            AppText(
                              title: 'TwoKSales'.tr,
                              color: AppColors.primaryColor,
                              size: 13,
                            ),
                            SizedBox(height: 5),
                            AppText(
                              title: r'$780'.tr,
                              fontWeight: FontWeight.w700,
                              size: 18,
                              color: AppColors.primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.StandardGreen,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 80, 15, 15),
                      child: Menu(),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(8, 179, 127, 1),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Column(
                          children: [
                            AppText(
                              title: 'StandardPackage'.tr,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(height: 5),
                            AppText(
                              title: 'TwoKSales'.tr,
                              color: AppColors.primaryColor,
                              size: 13,
                            ),
                            SizedBox(height: 5),
                            AppText(
                              title: r'$780'.tr,
                              fontWeight: FontWeight.w700,
                              size: 18,
                              color: AppColors.primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.customizePkgSaveRoute);
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.Orange,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 80, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'Chooseyourdiet'.tr,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 15),
                            AppText(
                              title: 'MakeyourPlan'.tr,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 15),
                            AppText(
                              title: 'Varietydishes'.tr,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // right: 30,
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: AppColors.Orange,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 33),
                          child: Column(
                            children: [
                              AppText(
                                title: 'CustomizePackage'.tr,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Menu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: 'Breakfast'.tr,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 6),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'ParathaButter'.tr,
                style: TextStyle(
                  fontFamily: 'main',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: AppColors.DescriptionColor,
                ),
              ),
              TextSpan(
                text: r'$220'.tr,
                style: TextStyle(
                  fontFamily: 'main',
                  fontSize: 12,
                  color: AppColors.commonColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        AppText(
          title: 'Lunch'.tr,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 6),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'ThaliSabziRoti'.tr,
                style: TextStyle(
                  fontFamily: 'main',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: AppColors.DescriptionColor,
                ),
              ),
              TextSpan(
                text: r'$220'.tr,
                style: TextStyle(
                  fontFamily: 'main',
                  fontSize: 12,
                  color: AppColors.commonColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        AppText(
          title: 'Dinner'.tr,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 6),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'ThaliRotiSweedish'.tr,
                style: TextStyle(
                  fontFamily: 'main',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: AppColors.DescriptionColor,
                ),
              ),
              TextSpan(
                text: r'$220'.tr,
                style: TextStyle(
                  fontFamily: 'main',
                  fontSize: 12,
                  color: AppColors.commonColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
