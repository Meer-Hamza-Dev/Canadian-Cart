// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/app/auth/controller/auth_controller.dart';
import 'package:candian_cart/app/home/home.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class OTPConfirm extends StatelessWidget {
  const OTPConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => HomeScreen());
    });
    return GetBuilder<AuthController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: MainAppBar(
            title: 'otpVerification'.tr,
          ),
          backgroundColor: AppColors.greyLight,
        ),
        backgroundColor: AppColors.greyLight,
        body: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            children: [
              Lottie.asset(ImageConst.otpConfirm),
              AppText(
                title: 'verifiCom'.tr,
                size: 18,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'succVeri'.tr,
                textAlign: TextAlign.center,
                height: 1.8,
                color: AppColors.blackColor.withOpacity(.6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
