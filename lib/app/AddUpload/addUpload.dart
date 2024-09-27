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
import 'package:candian_cart/utils/app_text_field.dart';
import '../../../../routes/app_pages.dart';

class UploadAdd extends StatelessWidget {
  const UploadAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Video'.tr,
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
                title: 'CreateADshere'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff0000000F),
                      blurRadius: 48,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 22),
                  child: Column(
                    children: [
                      AppText(
                        title: 'CurrentBalance'.tr,
                        size: 11,
                        color: AppColors.DescriptionColor,
                      ),
                      SizedBox(
                        height: 11.84,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(ImageConst.stat),
                          SizedBox(
                            width: 15.5,
                          ),
                          AppText(
                            title: r'$35654'.tr,
                            size: 28,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.3,
                      ),
                      AppText(
                        title: 'Updated2minago'.tr,
                        size: 11,
                        color: AppColors.DescriptionColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'VideoTitle'.tr,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Writetitlehere'.tr,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Description'.tr,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Writedescription'.tr,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(
                height: 15,
              ),
              AppText(
                title: 'Address'.tr,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Writeaddress'.tr,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(
                height: 15,
              ),
              AppText(
                title: 'Days'.tr,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Howmanydays'.tr,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Budget'.tr,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Typeyourbudget'.tr,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Uploadvideohere'.tr,
                size: 13,
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 38, 0, 24),
                  child: Column(
                    children: [
                      DoubleAppButton(
                        buttonName: 'Upload'.tr,
                        buttonWidth: 130,
                        color: AppColors.commonColor,
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppText(
                        title: 'Thisvideoshouldinreel'.tr,
                        size: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColors.DescriptionColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              AppButton(
                buttonName: 'Publish'.tr,
                color: AppColors.commonColor,
                onTap: () {
                  Get.toNamed(Routes.reelsRoute);
                  Get.dialog(
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 15, 25, 25),
                              child: Column(
                                children: [
                                  Container(
                                    height: 83,
                                    width: 83,
                                    child: Lottie.asset(ImageConst.Done),
                                  ),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  AppText(
                                    title: 'AdPublishedSuccessfully'.tr,
                                    size: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 11.0),
                                    child: AppText(
                                      title: 'YourAmountDeducted'.tr,
                                      textAlign: TextAlign.center,
                                      size: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.DescriptionColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  AppButton(
                                    buttonName: 'Done'.tr,
                                    color: AppColors.commonColor,
                                    onTap: () {
                                      Get.back();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
