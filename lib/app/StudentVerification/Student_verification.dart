// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// import 'package:candian_cart/app/commen_widgets/commen_widgets.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class Student_Verification extends StatelessWidget {
  const Student_Verification({super.key});

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
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'StudentVerification'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 7),
              AppText(
                title: 'Completeverfication'.tr,
                color: AppColors.DescriptionColor,
                fontWeight: FontWeight.w300,
                size: 13,
                height: 1.7,
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Name'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              appField(
                context: context,
                hint: 'enterName'.tr,
                fillColor: AppColors.primaryColor,
                hintSize: 13,
                height: 18,
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Age'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              appField(
                context: context,
                hint: 'enterage'.tr,
                fillColor: AppColors.primaryColor,
                hintSize: 13,
                height: 18,
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Yearstudy'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              appField(
                context: context,
                hint: 'enterstudyyears'.tr,
                fillColor: AppColors.primaryColor,
                hintSize: 13,
                height: 18,
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Address'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              appField(
                context: context,
                hint: 'enteraddress'.tr,
                fillColor: AppColors.primaryColor,
                hintSize: 13,
                height: 18,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'StudentId'.tr,
                fontWeight: FontWeight.w500,
                size: 13,
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 41.0),
                  child: Center(
                    child: DoubleAppButton(
                      buttonName: 'UploadImage'.tr,
                      textColor: AppColors.primaryColor,
                      textSize: 12,
                      buttonWidth: 200,
                      color: AppColors.commonColor,
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              AppButton(
                buttonName: 'Done'.tr,
                color: AppColors.commonColor,
                onTap: () {
                  Get.toNamed(Routes.studentDiscountRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
