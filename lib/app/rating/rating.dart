// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
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

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Rating'.tr,
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
                title: 'HereyoucanReview'.tr,
                size: 13,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 26),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  child: Column(
                    children: [
                      AppText(
                        title: 'EnjoyFoodExp'.tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 19),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      AppText(
                        title: 'Thisfooddelicious'.tr,
                        size: 11,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 24),
                      AppText(
                        title: 'GiveRating'.tr,
                        size: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff878787),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  child: Column(
                    children: [
                      AppText(
                        title: 'Whatdoyoulikefood'.tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 23),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.commonColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: AppText(
                                title: 'FriedNoodle'.tr,
                                size: 10.5,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 11),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.F9grey,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: AppText(
                                title: 'Pizza'.tr,
                                size: 10.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.F9grey,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: AppText(
                                title: 'Sushi'.tr,
                                size: 10.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.F9grey,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: AppText(
                                title: 'Ramen'.tr,
                                size: 10.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.F9grey,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: AppText(
                                title: 'FriedNoodle'.tr,
                                size: 10.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.F9grey,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: AppText(
                                title: 'HotDog'.tr,
                                size: 10.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 11),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.commonColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: AppText(
                                title: 'Chocolate'.tr,
                                size: 10.5,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 11),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.F9grey,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: AppText(
                                title: 'Soda'.tr,
                                size: 10.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 15),
                  child: Column(
                    children: [
                      AppText(
                        title: 'TellaboutFood'.tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 17),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF9F9F9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 12, left: 15, right: 15),
                          child: Column(
                            children: [
                              appField(
                                context: context,
                                hint: 'Tellsomething'.tr,
                                fillColor: AppColors.F9grey,
                                max: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    title: 'W0to1000'.tr,
                                    size: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grey,
                                  ),
                                  Icon(
                                    Icons.edit_square,
                                    size: 15,
                                    color: AppColors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  child: Column(
                    children: [
                      AppText(
                        title: 'GiveRatingDeliveryGuy'.tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        ImageConst.signup,
                        height: 47,
                        width: 47,
                      ),
                      SizedBox(height: 8),
                      AppText(
                        title: 'Driver',
                        size: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB5B5B5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        title: 'ChauffinaCarr'.tr,
                        size: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.starColor,
                            size: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      // SvgPicture.asset(ImageConst.EYE),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: AppText(
                          title: 'Reviewasanonymous'.tr,
                          size: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 15,
                        width: 24,
                        child: CupertinoSwitch(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              AppButton(
                buttonName: 'SubmitReview'.tr,
                color: AppColors.commonColor,
                onTap: () {
                  Get.dialog(
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 15, 25, 25),
                              child: Column(
                                children: [
                                  Container(
                                    height: 83,
                                    width: 83,
                                    child: Lottie.asset(ImageConst.Done),
                                  ),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  AppText(
                                    title: 'ReviewSubmitted'.tr,
                                    fontWeight: FontWeight.w600,
                                    size: 16,
                                    color: AppColors.blackColor,
                                  ),
                                  SizedBox(height: 15),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 11.0),
                                    child: AppText(
                                      title: 'ThankyouNote'.tr,
                                      height: 1.5,
                                      textAlign: TextAlign.center,
                                      size: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.DescriptionColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  AppButton(
                                    buttonName: 'Done'.tr,
                                    color: AppColors.commonColor,
                                    textColor: AppColors.primaryColor,
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
    );
  }
}
