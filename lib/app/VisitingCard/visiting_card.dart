// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import '../../../../routes/app_pages.dart';

class VisitingCards extends StatelessWidget {
  const VisitingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'StudentDiscount'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    title: 'ViewVisitingcard'.tr,
                    fontWeight: FontWeight.w500,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.07),
                          blurRadius: 12,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13),
                      child: Row(
                        children: [
                          SvgPicture.asset(ImageConst.mycard),
                          SizedBox(width: 7),
                          AppText(title: 'MyCards'.tr),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              color: AppColors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      title: 'SeeAll'.tr,
                      size: 12,
                      color: AppColors.commonColor,
                    ),
                    AppText(
                      title: 'Explore'.tr,
                      size: 12,
                    ),
                    AppText(
                      title: 'Latest'.tr,
                      size: 12,
                    ),
                    AppText(
                      title: 'Restaurant'.tr,
                      size: 12,
                    ),
                    AppText(
                      title: 'Grocery'.tr,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(ImageConst.signup),
                          ),
                          SizedBox(width: 15),
                          AppText(title: 'FleeceMarigold'.tr),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            ImageConst.card2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.commonColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.commonColorlight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.commonColorlight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              color: AppColors.commonColorlight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.thumb_up_sharp,
                                  size: 15,
                                  color: AppColors.commonColor,
                                ),
                                AppText(
                                  title: 'twentyseven'.tr,
                                  color: AppColors.commonColor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              color: AppColors.commonColorlight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(ImageConst.share),
                                AppText(
                                  title: 'twentyseven'.tr,
                                  color: AppColors.commonColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(ImageConst.signup),
                          ),
                          SizedBox(width: 15),
                          AppText(title: 'FleeceMarigold'.tr),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.flayerDetailRoute);
                          },
                          child: Image.asset(
                            ImageConst.card1,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.commonColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.commonColorlight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: AppColors.commonColorlight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              color: AppColors.commonColorlight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.thumb_up_sharp,
                                  size: 15,
                                  color: AppColors.commonColor,
                                ),
                                AppText(
                                  title: 'twentyseven'.tr,
                                  color: AppColors.commonColor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              color: AppColors.commonColorlight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(ImageConst.share),
                                AppText(
                                  title: 'twentyseven'.tr,
                                  color: AppColors.commonColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
