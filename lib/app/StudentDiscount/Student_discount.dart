// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/app/home/home.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/routes/app_pages.dart';

class Student_Discount extends StatelessWidget {
  const Student_Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'StudentDiscount'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 10, 25, 25),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    children: [
                      AppText(
                        title: 'Howapplydtudentdiscount'.tr,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: AppColors.commonColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(width: 8),
                          AppText(
                            title: 'Uploadstudentid'.tr,
                            fontWeight: FontWeight.w300,
                            size: 13,
                            color: AppColors.DescriptionColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: AppColors.commonColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(width: 8),
                          AppText(
                            title: 'enterdetailsaboutyou'.tr,
                            fontWeight: FontWeight.w300,
                            size: 13,
                            color: AppColors.DescriptionColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: AppColors.commonColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(width: 8),
                          AppText(
                            title: 'enterdetailsaboutyou'.tr,
                            fontWeight: FontWeight.w300,
                            size: 13,
                            color: AppColors.DescriptionColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      DoubleAppButton(
                        buttonName: 'Registerstudent'.tr,
                        textColor: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        textSize: 13,
                        buttonWidth: 210,
                        color: AppColors.commonColor,
                        onTap: () {
                          Get.toNamed(Routes.studentVerificationRoute);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    title: 'StudentDiscount'.tr,
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.restaurantDetailsRoute);
                      },
                      child: ResturantWidget()),
                  ResturantWidget(),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResturantWidget(),
                  ResturantWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
