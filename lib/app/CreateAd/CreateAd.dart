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

class Create_Ad extends StatelessWidget {
  const Create_Ad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Promotebusiness'.tr,
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
                title: r'Createbanner$125'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Bannertitle'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Entertitle'.tr,
                height: 18,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'OfferDescription'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'EnterDescription'.tr,
                height: 18,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'OfferType'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'EnterDiscount'.tr,
                height: 18,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Offerpercentage'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'EnterDiscount'.tr,
                height: 18,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'WebsiteURL'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Pastewebsiteurl'.tr,
                height: 18,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'UploadLogo'.tr,
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
                      color: AppColors.commonColor,
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              AppButton(
                buttonName: 'Payment'.tr,
                color: AppColors.commonColor,
                textColor: AppColors.primaryColor,
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      height: 260,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 7, 25, 25),
                        child: Column(
                          children: [
                            Container(
                              height: 4,
                              width: 69,
                              decoration: BoxDecoration(
                                color: AppColors.commonColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            SizedBox(height: 25),
                            AppText(
                              title: 'Payment'.tr,
                              size: 17,
                            ),
                            SizedBox(height: 25),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.F9grey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(ImageConst.stripe),
                                    Container(
                                      height: 27,
                                      width: 27,
                                      decoration: BoxDecoration(
                                        color: AppColors.commonColor,
                                        borderRadius: BorderRadius.circular(27),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.done,
                                          color: AppColors.primaryColor,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: DoubleAppButton(
                                    buttonName: 'Cancel'.tr,
                                    color: AppColors.F9grey,
                                    textColor: AppColors.C9Color,
                                    onTap: () {
                                      Get.back();
                                    },
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: DoubleAppButton(
                                    buttonName: 'Done'.tr,
                                    color: AppColors.commonColor,
                                    textColor: AppColors.primaryColor,
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
                                                          15, 15, 25, 25),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 83,
                                                        width: 83,
                                                        child: Lottie.asset(
                                                            ImageConst.Done),
                                                      ),
                                                      SizedBox(
                                                        height: 13,
                                                      ),
                                                      AppText(
                                                        title: 'Payment'.tr,
                                                        size: 14,
                                                        color: AppColors
                                                            .blackColor,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal:
                                                                    11.0),
                                                        child: AppText(
                                                          title:
                                                              'YourPaymentsuccesful'
                                                                  .tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          size: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: AppColors
                                                              .DescriptionColor,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 25,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                DoubleAppButton(
                                                              buttonName:
                                                                  'Done'.tr,
                                                              color: AppColors
                                                                  .commonColor,
                                                              textColor: AppColors
                                                                  .primaryColor,
                                                              onTap: () {
                                                                Get.back();
                                                              },
                                                            ),
                                                          ),
                                                          SizedBox(width: 15),
                                                          GestureDetector(
                                                            onTap: () {
                                                              Get.toNamed(Routes
                                                                  .messageScreenRoute);
                                                            },
                                                            child: Container(
                                                              height: 50,
                                                              width: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: AppColors
                                                                    .primaryColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40),
                                                              ),
                                                              child: Center(
                                                                child: Lottie.asset(
                                                                    ImageConst
                                                                        .chatAnim),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
