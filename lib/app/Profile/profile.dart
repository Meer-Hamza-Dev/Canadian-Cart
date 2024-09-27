// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Profile'.tr,
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 15, 25, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(ImageConst.signup),
                  ),
                  SizedBox(height: 15),
                  AppText(
                    title: 'Username'.tr,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15),
                  appField(
                    context: context,
                    hint: 'Entername'.tr,
                    fillColor: AppColors.primaryColor,
                    hintSize: 12,
                    height: 18,
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'Email'.tr,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15),
                  appField(
                    context: context,
                    hint: 'Typeemail'.tr,
                    fillColor: AppColors.primaryColor,
                    hintSize: 12,
                    height: 18,
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'Phonenumber'.tr,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15),
                  appField(
                    context: context,
                    hint: 'Writemobilenumberhere'.tr,
                    fillColor: AppColors.primaryColor,
                    hintSize: 12,
                    height: 18,
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'Occupation'.tr,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15),
                  appField(
                    context: context,
                    hint: 'Enterbestskills'.tr,
                    fillColor: AppColors.primaryColor,
                    hintSize: 12,
                    height: 18,
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'Province'.tr,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15),
                  appField(
                    context: context,
                    hint: 'Enterprovince'.tr,
                    fillColor: AppColors.primaryColor,
                    hintSize: 12,
                    height: 18,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  AppButton(
                    buttonName: 'EditProfile'.tr,
                    color: AppColors.commonColor,
                    onTap: () {
                      Get.toNamed(Routes.editProfilrRoute);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
