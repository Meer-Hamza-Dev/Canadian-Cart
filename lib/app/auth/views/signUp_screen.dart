// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:candian_cart/app/auth/controller/auth_controller.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return GetBuilder<AuthController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        appBar: AppBar(
          surfaceTintColor: AppColors.greyLight,
          automaticallyImplyLeading: false,
          title: MainAppBar(
            title: 'signup'.tr,
          ),
          backgroundColor: AppColors.greyLight,
        ),
        backgroundColor: AppColors.greyLight,
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: EdgeInsets.fromLTRB(25, 15, 25, 30),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        controller.pickImage(ImageSource.gallery);
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Obx(
                            () {
                              return controller.selectedImage.value == null
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        ImageConst.signup,
                                        height: 69,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.file(
                                        controller.selectedImage.value!,
                                        height: 69,
                                        width: 70,
                                        fit: BoxFit.cover,
                                      ),
                                    );
                            },
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Image.asset(ImageConst.addImg),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  AppText(
                    title: 'userName'.tr,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  appField(
                    height: 18,
                    hintSize: 13,
                    fillColor: AppColors.primaryColor,
                    context: context,
                    hint: 'enterName'.tr,
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'enterName'.tr;
                    //   }
                    // },
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'email'.tr,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  appField(
                    height: 18,
                    hintSize: 13,
                    fillColor: AppColors.primaryColor,
                    context: context,
                    hint: 'enterEmail'.tr,
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'enterEmail'.tr;
                    //   }
                    // },
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'mobNum'.tr,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  appField(
                    height: 18,
                    hintSize: 13,
                    fillColor: AppColors.primaryColor,
                    context: context,
                    hint: 'enterMobNum'.tr,
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'enterMobNum'.tr;
                    //   }
                    // },
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'occupation'.tr,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  appField(
                    height: 18,
                    hintSize: 13,
                    fillColor: AppColors.primaryColor,
                    context: context,
                    hint: 'Enterbestskills'.tr,
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'enterBestSkill'.tr;
                    //   }
                    // },
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'Province'.tr,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  appField(
                    height: 18,
                    hintSize: 13,
                    fillColor: AppColors.primaryColor,
                    context: context,
                    hint: 'Enterprovince'.tr,
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'enterProvince'.tr;
                    //   }
                    // },
                  ),
                  SizedBox(height: 70),
                  AppButton(
                    buttonName: 'next'.tr,
                    color: AppColors.commonColor,
                    onTap: () {
                      // if (formKey.currentState!.validate()) {}
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
