// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';

class Rewards extends StatelessWidget {
  const Rewards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'reward'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: SafeArea(
        minimum: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: 'welcome'.tr,
                  color: Color(0xff444444),
                ),
                SizedBox(height: 4),
                AppText(
                  title: 'chrisAaron'.tr,
                  size: 17,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.06),
                        blurRadius: 48,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        AppText(
                          title: 'currentPoints'.tr,
                          size: 11,
                          color: Color(0xffA29E9B),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(ImageConst.pointred),
                            SizedBox(width: 15),
                            AppText(
                              title: 'points'.tr,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        AppText(
                          title: 'updated'.tr,
                          size: 11,
                          color: Color(0xffA29E9B),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppColors.commonColor,
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: SvgPicture.asset(ImageConst.pointwhite),
                          ),
                        ),
                        SizedBox(height: 12),
                        AppText(
                          title: 'earned'.tr,
                          size: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.commonColor,
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: Center(
                            child: SvgPicture.asset(ImageConst.wallet),
                          ),
                        ),
                        SizedBox(height: 12),
                        AppText(
                          title: 'wallet'.tr,
                          size: 13,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xffF9F9F9),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 20, 18, 20),
                                child: Center(
                                  child: SvgPicture.asset(
                                    ImageConst.pointred,
                                    height: 24,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: 'invoiceNo'.tr,
                                  size: 12,
                                  color: Color(0xffA29E9B),
                                ),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    AppText(
                                      title: 'tenPoints'.tr,
                                      size: 19,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                AppText(
                                  title: 'Date : 11-22-2024'.tr,
                                  size: 12,
                                  color: Color(0xffA29E9B),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            color: Color(0xff16C72E),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Icon(
                              Icons.done,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xffF9F9F9),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 20, 18, 20),
                                child: Center(
                                  child: SvgPicture.asset(
                                    ImageConst.pointred,
                                    height: 24,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: 'invoiceNo'.tr,
                                  size: 12,
                                  color: Color(0xffA29E9B),
                                ),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    AppText(
                                      title: 'tenPoints'.tr,
                                      size: 19,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                AppText(
                                  title: 'Date : 11-22-2024'.tr,
                                  size: 12,
                                  color: Color(0xffA29E9B),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            color: Color(0xff16C72E),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Icon(
                              Icons.done,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppButton(
              buttonName: 'redeemPoints'.tr,
              color: AppColors.commonColor,
              onTap: () {
                Get.bottomSheet(
                  Container(
                    height: 290,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 7, 25, 15),
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
                            title: 'redeemRewardPoints'.tr,
                            size: 17,
                          ),
                          SizedBox(height: 6),
                          AppText(
                            title: r'10 Reward points are equal to $1'.tr,
                            size: 10,
                            color: Color(0xffA29E9B),
                          ),
                          SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                title: 'rewardPoints'.tr,
                                size: 13,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(height: 15),
                              appField(
                                context: context,
                                fillColor: AppColors.greyLight,
                                borderRadius: BorderRadius.circular(10),
                                height: 17,
                                hint: 'enterPoints'.tr,
                                hintColor: AppColors.blackColor.withOpacity(.3),
                                hintSize: 12,
                              ),
                              SizedBox(height: 26),
                              Row(
                                children: [
                                  Expanded(
                                    child: DoubleAppButton(
                                      buttonName: 'Cancel'.tr,
                                      color: AppColors.greyLight,
                                      textColor: AppColors.grey,
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
                                                  decoration: BoxDecoration(
                                                    color:
                                                        AppColors.primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        15, 25, 25, 20),
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
                                                              'pointsRedeem'.tr,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          size: 17,
                                                        ),
                                                        SizedBox(height: 12),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      11.0),
                                                          child: AppText(
                                                            title:
                                                                'yourPointsRedeem'
                                                                    .tr,
                                                            textAlign: TextAlign
                                                                .center,
                                                            color: Color(
                                                                0xff606060),
                                                            size: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                        SizedBox(height: 25),
                                                        AppButton(
                                                            buttonName:
                                                                'Done'.tr,
                                                            color: AppColors
                                                                .commonColor,
                                                            onTap: () {
                                                              Get.back();
                                                            }),
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
    );
  }
}
