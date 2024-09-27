// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/commen_widgets/commen_widgets.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        backgroundColor: AppColors.commonColor,
        shadowColor: AppColors.transperentColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        title: AppText(
          title: 'wallet'.tr,
          color: AppColors.primaryColor,
        ),
        actions: [
          SvgPicture.asset(ImageConst.whiteWallet),
          SizedBox(width: 12),
          SvgPicture.asset(
            ImageConst.whiteNoti,
          ),
          SizedBox(width: 20),
        ],
      ),
      backgroundColor: AppColors.greyLight,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.commonColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        title: 'welcome'.tr,
                        size: 15,
                        color: Color(0xff444444),
                      ),
                      SizedBox(height: 4),
                      AppText(
                        title: 'chrisAaron'.tr,
                        size: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffFF6062),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                title: 'totalBalance'.tr,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff444444),
                                size: 15,
                              ),
                              SizedBox(height: 9),
                              AppText(
                                title: 'usdBalance'.tr,
                                size: 22,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.bottomSheet(
                                    Container(
                                      height: 335,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(25, 7, 25, 13),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 4,
                                              width: 69,
                                              decoration: BoxDecoration(
                                                color: AppColors.commonColor,
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                            SizedBox(height: 25),
                                            AppText(
                                              title: 'addPayment'.tr,
                                              size: 15,
                                            ),
                                            SizedBox(height: 25),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AppText(
                                                  title: 'amount'.tr,
                                                  size: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                SizedBox(height: 16),
                                                Container(
                                                  height: 57,
                                                  decoration: BoxDecoration(
                                                    color: AppColors.greyLight,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 12),
                                                    child: Center(
                                                      child: appField(
                                                        context: context,
                                                        hint: 'enterAmount'.tr,
                                                        fillColor:
                                                            AppColors.greyLight,
                                                        hintColor: AppColors
                                                            .blackColor
                                                            .withOpacity(.4),
                                                        hintSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffF9F9F9),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 15.0,
                                                        vertical: 9),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Image.asset(
                                                            ImageConst.stripe),
                                                        Container(
                                                          height: 26,
                                                          width: 26,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: AppColors
                                                                .commonColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        36),
                                                          ),
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.done,
                                                              color: AppColors
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 26),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: DoubleAppButton(
                                                        buttonName: 'Cancel'.tr,
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        color:
                                                            AppColors.greyLight,
                                                        textColor:
                                                            AppColors.grey,
                                                      ),
                                                    ),
                                                    SizedBox(width: 15),
                                                    Expanded(
                                                      child: DoubleAppButton(
                                                        buttonName: 'Done'.tr,
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        color: AppColors
                                                            .commonColor,
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
                                child: Container(
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFF6062),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(ImageConst.add),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              AppText(
                                title: 'add'.tr,
                                size: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                          SizedBox(width: 25),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.bottomSheet(
                                    Container(
                                      height: 335,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(25, 7, 25, 13),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 4,
                                              width: 69,
                                              decoration: BoxDecoration(
                                                color: AppColors.commonColor,
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                            SizedBox(height: 25),
                                            AppText(
                                              title: 'withdrawAmount'.tr,
                                              size: 16,
                                            ),
                                            SizedBox(height: 25),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AppText(
                                                  title: 'amount'.tr,
                                                  size: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                SizedBox(height: 16),
                                                Container(
                                                  height: 57,
                                                  decoration: BoxDecoration(
                                                    color: AppColors.greyLight,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 12),
                                                    child: Center(
                                                      child: appField(
                                                        context: context,
                                                        hint: 'enterAmount'.tr,
                                                        fillColor:
                                                            AppColors.greyLight,
                                                        hintColor: AppColors
                                                            .blackColor
                                                            .withOpacity(.4),
                                                        hintSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffF9F9F9),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 15.0,
                                                        vertical: 9),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Image.asset(
                                                            ImageConst.stripe),
                                                        Container(
                                                          height: 26,
                                                          width: 26,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: AppColors
                                                                .commonColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        36),
                                                          ),
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.done,
                                                              color: AppColors
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 26),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: DoubleAppButton(
                                                        buttonName: 'Cancel'.tr,
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        color:
                                                            AppColors.greyLight,
                                                        textColor:
                                                            AppColors.grey,
                                                      ),
                                                    ),
                                                    SizedBox(width: 15),
                                                    Expanded(
                                                      child: DoubleAppButton(
                                                        buttonName: 'Done'.tr,
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        color: AppColors
                                                            .commonColor,
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
                                child: Container(
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFF6062),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(ImageConst.request),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              AppText(
                                title: 'request'.tr,
                                size: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                          SizedBox(width: 70),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.rewardsScreenRoute);
                                },
                                child: Container(
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFF6062),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(ImageConst.reward),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              AppText(
                                title: 'reward'.tr,
                                size: 13,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffFF6062),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 44, 25, 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppText(
                        title: 'lastTransactions'.tr,
                        size: 17,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.lastTranscationRoute);
                      },
                      child: AppText(
                        title: 'seeAll'.tr,
                        size: 15,
                        color: AppColors.commonColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                lastTransactions(),
                SizedBox(height: 16),
                lastTransactions(),
                SizedBox(height: 16),
                lastTransactions(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
