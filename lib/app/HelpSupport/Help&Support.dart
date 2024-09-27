// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/app/HelpSupport/help_&_support_controller.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class HelpAndSupport extends StatelessWidget {
  HelpAndSupport({super.key});
  final HelpSupportcontroller controller = HelpSupportcontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'HelpSupport'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 25, 25, 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: 'SomethingliketoShare'.tr,
                    size: 17,
                    height: 1.3,
                    color: AppColors.DescriptionColor,
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'IfyouHaveQues'.tr,
                    size: 17,
                    height: 1.3,
                    color: AppColors.DescriptionColor,
                  ),
                  SizedBox(height: 20),
                  AppText(
                    title: 'MrAppTeam'.tr,
                    size: 17,
                    height: 1.3,
                    color: AppColors.DescriptionColor,
                  ),
                  SizedBox(height: 23),
                  appField(
                    context: context,
                    isPrefix: true,
                    prefixWidget: Icon(
                      Icons.search,
                      color: AppColors.commonColor,
                    ),
                    hint: 'SearchHelp'.tr,
                    fillColor: AppColors.primaryColor,
                    hintColor: AppColors.DescriptionColor.withOpacity(.5),
                    hintSize: 12,
                    height: 17,
                  ),
                  SizedBox(height: 25),
                  AppText(
                    title: 'FAQ'.tr,
                    fontWeight: FontWeight.w500,
                    size: 16,
                  ),
                  SizedBox(height: 25),
                  Obx(() {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 17.5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  title: 'HowAppWork'.tr,
                                  fontWeight: FontWeight.w500,
                                  size: 13,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (controller.seletedValuetype.value ==
                                        "Faq") {
                                      controller.updateValueType("");
                                    } else {
                                      controller.updateValueType("Faq");
                                    }
                                  },
                                  child:
                                      controller.seletedValuetype.value == "Faq"
                                          ? Icon(
                                              Icons.close,
                                              size: 18,
                                            )
                                          : Icon(
                                              Icons.add,
                                              size: 18,
                                            ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        controller.seletedValuetype.value == 'Faq'
                            ? Column(
                                children: [
                                  SizedBox(height: 15),
                                  AppText(
                                    title: 'LoremDescription'.tr,
                                    height: 1.3,
                                    size: 13,
                                    color: AppColors.DescriptionColor,
                                  ),
                                  SizedBox(height: 15),
                                ],
                              )
                            : SizedBox(height: 15),
                      ],
                    );
                  }),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 17.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'HowPlaceOrder'.tr,
                            fontWeight: FontWeight.w500,
                            size: 13,
                          ),
                          Icon(Icons.add, size: 18),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 17.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'CanCustomizeOrder'.tr,
                            fontWeight: FontWeight.w500,
                            size: 13,
                          ),
                          Icon(Icons.add, size: 18),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 17.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'HowPayForOrder'.tr,
                            fontWeight: FontWeight.w500,
                            size: 13,
                          ),
                          Icon(Icons.add, size: 18),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 17.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'Whatifissue'.tr,
                            fontWeight: FontWeight.w500,
                            size: 13,
                          ),
                          Icon(Icons.add, size: 18),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 17.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'HowtrackOrder'.tr,
                            fontWeight: FontWeight.w500,
                            size: 13,
                          ),
                          Icon(Icons.add, size: 18),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              AppButton(
                buttonName: 'helpgmail'.tr,
                color: AppColors.commonColor,
                onTap: () {
                  Get.dialog(
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Container(
                            height: 310,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Material(
                                        child: appField(
                                          context: context,
                                          fillColor: AppColors.F9grey,
                                          hint: 'Writesomething'.tr,
                                          max: 8,
                                          hintSize: 12,
                                        ),
                                      ),
                                      Positioned(
                                        right: 10,
                                        top: 7,
                                        child: Icon(Icons.close, size: 15),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  AppButton(
                                    buttonName: 'Send'.tr,
                                    color: AppColors.commonColor,
                                    onTap: () {
                                      Get.back();
                                      Get.dialog(
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 25.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          25, 15, 25, 25),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 83,
                                                        width: 83,
                                                        child: Lottie.asset(
                                                            ImageConst.Done),
                                                      ),
                                                      SizedBox(height: 13),
                                                      AppText(
                                                        title:
                                                            'FeedbackSent'.tr,
                                                        size: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      SizedBox(height: 15),
                                                      AppText(
                                                        title: 'ThankuMrApp'.tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        height: 1.4,
                                                        size: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors
                                                            .DescriptionColor,
                                                      ),
                                                      SizedBox(height: 25),
                                                      AppButton(
                                                        buttonName: 'Done'.tr,
                                                        color: AppColors
                                                            .commonColor,
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
