// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import '../../../../routes/app_pages.dart';

class FlayerDetail extends StatelessWidget {
  const FlayerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Flyers'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 15, 25, 30),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(ImageConst.signup),
                          ),
                          SizedBox(width: 15),
                          AppText(
                            title: 'Flyers'.tr,
                            size: 14,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.shopping_cart_rounded,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  AppText(
                    title: 'FleeceDescription'.tr,
                    size: 13,
                    color: AppColors.DescriptionColor,
                    height: 2,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          isScrollControlled: true,
                          Container(
                            height: Get.height * .42,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(25, 5, 25, 20),
                              child: Column(
                                children: [
                                  Container(
                                    height: 5,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: AppColors.commonColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  SizedBox(
                                    height: 115,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: Image.asset(
                                        ImageConst.flyerBottom,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AppText(
                                            title: 'ProductName'.tr,
                                            fontWeight: FontWeight.w500,
                                            size: 14,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          AppText(
                                            title: 'marigold'.tr,
                                            size: 11,
                                          )
                                        ],
                                      ),
                                      AppText(
                                        title: r'Twentyfive$'.tr,
                                        fontWeight: FontWeight.w500,
                                        size: 14,
                                        color: AppColors.commonColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  AppText(
                                    title: 'FleeceDescription'.tr,
                                    size: 13,
                                    color: AppColors.DescriptionColor,
                                    height: 2,
                                  ),
                                  SizedBox(height: 25),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: DoubleAppButton(
                                          buttonName: 'Addtocart'.tr,
                                          fontWeight: FontWeight.w500,
                                          textSize: 17,
                                          textColor: AppColors.C9Color,
                                          color: AppColors.F9grey,
                                          onTap: () {},
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        child: DoubleAppButton(
                                          buttonName: 'Share'.tr,
                                          fontWeight: FontWeight.w500,
                                          textSize: 17,
                                          textColor: AppColors.primaryColor,
                                          color: AppColors.commonColor,
                                          onTap: () {},
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
                      child: Image.asset(
                        ImageConst.flayer1,
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
                          size: 14,
                          color: AppColors.commonColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                  SizedBox(height: 10),
                  AppText(
                    title: 'FleeceDescription'.tr,
                    size: 13,
                    color: AppColors.DescriptionColor,
                    height: 2,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.flayerDetailRoute);
                      },
                      child: Image.asset(
                        ImageConst.flyer2,
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
                          size: 14,
                          color: AppColors.commonColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                  SizedBox(height: 10),
                  AppText(
                    title: 'FleeceDescription'.tr,
                    size: 13,
                    color: AppColors.DescriptionColor,
                    height: 2,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.flayerDetailRoute);
                      },
                      child: Image.asset(
                        ImageConst.flayer1,
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
                          size: 14,
                          color: AppColors.commonColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
