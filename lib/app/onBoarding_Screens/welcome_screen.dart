// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/routes/app_pages.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyLight,
      body: Column(
        children: [
          Expanded(
            child: Lottie.asset(ImageConst.welcomeImage),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SafeArea(
              minimum: EdgeInsets.fromLTRB(25, 30, 25, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'welcome'.tr,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      children: [
                        TextSpan(text: ' '),
                        TextSpan(
                          text: 'MR'.tr,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.commonColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7),
                  AppText(
                    title: 'getStarted'.tr,
                    size: 31,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 15),
                  AppText(
                    title: 'welDescription'.tr,
                    color: AppColors.blackColor.withOpacity(.3),
                    height: 1.3,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 25),
                  AppButton(
                    buttonName: 'signCustomer'.tr,
                    onTap: () {
                      Get.toNamed(Routes.signInScreenRoute);
                    },
                    color: AppColors.commonColor,
                    textSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 25),
                  AppButton(
                    buttonName: 'signBusiness'.tr,
                    onTap: () {},
                    borderColor: AppColors.commonColor,
                    textColor: AppColors.commonColor,
                    textSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
