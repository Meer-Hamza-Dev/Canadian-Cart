// ignore_for_file: prefer_const_constructors

import 'package:candian_cart/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/app/auth/controller/auth_controller.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: MainAppBar(
            title: 'otpVerification'.tr,
          ),
          backgroundColor: AppColors.greyLight,
          surfaceTintColor: AppColors.greyLight,
        ),
        backgroundColor: AppColors.greyLight,
        body: SafeArea(
          minimum: EdgeInsets.fromLTRB(28, 0, 28, 20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Lottie.asset(ImageConst.otpAnimation),
                      AppText(
                        title: 'enterCode'.tr,
                        size: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 13),
                      AppText(
                        title: 'pleaseEnterCode'.tr,
                        size: 11,
                        color: AppColors.blackColor.withOpacity(.6),
                        textAlign: TextAlign.center,
                        height: 1.4,
                      ),
                      SizedBox(height: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: 'enterOtpCode'.tr,
                            size: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 16),
                          PinCodeTextField(
                            autofocus: true,
                            controller: controller.codeController,
                            highlight: true,
                            highlightColor: AppColors.commonColor,
                            hasTextBorderColor: AppColors.transperentColor,
                            defaultBorderColor: Colors.transparent,
                            pinBoxRadius: 10,
                            maxLength: 6,
                            pinBoxWidth: 50,
                            pinBoxHeight: 50,
                            pinTextAnimatedSwitcherDuration:
                                Duration(milliseconds: 300),
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              AppButton(
                buttonName: 'continueText'.tr,
                onTap: () {
                  controller.signInWithPhoneNumber(
                    controller.codeController.text,
                  );
                },
                color: AppColors.commonColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
