// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:candian_cart/app/auth/social_login/social_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:candian_cart/app/auth/controller/auth_controller.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'signIn'.tr,
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: GetBuilder<AuthController>(
        autoRemove: false,
        builder: (controller) => SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 30, 25, 30),
          child: Column(
            children: [
              AppText(
                title: 'signInAccount'.tr,
                size: 18,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'SignInSub'.tr,
                size: 13.5,
                color: AppColors.blackColor.withOpacity(.6),
                textAlign: TextAlign.center,
                height: 1.3,
              ),
              SizedBox(height: 35),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'phone'.tr,
                      size: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 241, 241, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Obx(
                              () => DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: controller.selectedFlag.value.isEmpty
                                      ? null
                                      : controller.selectedFlag.value,
                                  hint: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                  ),
                                  items: controller.flags.map((flag) {
                                    return DropdownMenuItem<String>(
                                      value: flag,
                                      child: Image.asset(
                                        flag,
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    if (value != null) {
                                      controller.setSelectedFlag(value);
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Form(
                          key: formKey,
                          child: Container(
                            width: 280,
                            decoration: BoxDecoration(),
                            child: appField(
                              context: context,
                              hint: 'enterPhoneNo'.tr,
                              isBorderLine: false,
                              hintColor: AppColors.blackColor.withOpacity(.5),
                              height: 17,
                              hintSize: 12,
                              fillColor: AppColors.primaryColor,
                              controller: controller.phoneController,
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return "Please enter your number";
                              //   }
                              // },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    AppButton(
                      buttonName: 'sendOtp'.tr,
                      onTap: () {
                        controller.verifyPhone();
                        Get.toNamed(Routes.otpVerificationRoute);
                      },
                      color: AppColors.commonColor,
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(199, 199, 199, 1),
                          ),
                        ),
                        SizedBox(width: 5),
                        AppText(
                          title: 'continueWith'.tr,
                          size: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 1,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(199, 199, 199, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await AuthenticationHelper()
                                .googlebySignIn(context: context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(11),
                              child: Image.asset(
                                ImageConst.google,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Image.asset(
                              ImageConst.apple,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(
                              ImageConst.linkedIn,
                              height: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.signUpScreenRoute);
                },
                child: RichText(
                  text: TextSpan(
                    text: 'dontAccount'.tr,
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontFamily: 'main',
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(
                        text: 'createAcc'.tr,
                        style: TextStyle(
                          color: AppColors.commonColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
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
}
