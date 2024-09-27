// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import '../../../../routes/app_pages.dart';

class Viewallorders extends StatelessWidget {
  const Viewallorders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'myorders'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'orderhistory'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: AppText(
                        title: 'Tiffinservice'.tr,
                        size: 13,
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          value: 'Groceryorders'.tr,
                          child: Column(
                            children: [
                              Center(
                                child: AppText(
                                  title: 'Groceryorders'.tr,
                                  size: 12,
                                ),
                              ),
                              Divider(
                                indent: 60,
                                endIndent: 60,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Restaurantorders'.tr,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.myOrderRoute);
                                },
                                child: Center(
                                  child: AppText(
                                    title: 'Restaurantorders'.tr,
                                    size: 12,
                                  ),
                                ),
                              ),
                              Divider(
                                indent: 60,
                                endIndent: 60,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Tiffinserviceorders'.tr,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.viewAllOrderRoute);
                                },
                                child: Center(
                                  child: AppText(
                                    title: 'Tiffinserviceorders'.tr,
                                    size: 12,
                                  ),
                                ),
                              ),
                              Divider(
                                indent: 60,
                                endIndent: 60,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Cateringserviceorders'.tr,
                          child: Column(
                            children: [
                              Center(
                                child: AppText(
                                  title: 'Cateringserviceorders'.tr,
                                  size: 12,
                                ),
                              ),
                              Divider(
                                indent: 60,
                                endIndent: 60,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                      ],
                      onChanged: (String? newValue) {},
                      dropdownColor: AppColors.primaryColor,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      isExpanded: true,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              ABTiffinService(),
              SizedBox(height: 25),
              ABTiffinService(),
            ],
          ),
        ),
      ),
    );
  }

  Container ABTiffinService() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            blurRadius: 6,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.Yellow,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 18, 0, 15),
                child: Column(
                  children: [
                    AppText(
                      title: 'Basicpackage'.tr,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      title: 'TwoKSales'.tr,
                      size: 13,
                    ),
                    SizedBox(height: 5),
                    AppText(
                      title: r'SixSixtyM$'.tr,
                      size: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.commonColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: 'ABTiffinService'.tr,
                  size: 14,
                  fontWeight: FontWeight.w500,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppText(
                      title: r'SixSixtyM$'.tr,
                      fontWeight: FontWeight.w500,
                      color: AppColors.commonColor,
                    ),
                    SizedBox(height: 5),
                    AppText(
                      title: 'Paymentsuccessful'.tr,
                      size: 10,
                      color: AppColors.DescriptionColor,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Deliverdtime'.tr,
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff707070),
                    ),
                  ),
                  TextSpan(
                    text: 'ElevenPM'.tr,
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Deliverddate'.tr,
                    style: TextStyle(
                      fontFamily: 'main',
                      color: Color(0xff707070),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'Date'.tr,
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            AppButton(
              buttonName: 'CancelService'.tr,
              color: AppColors.commonColor,
              onTap: () {
                Get.dialog(
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 16),
                            child: Column(
                              children: [
                                Container(
                                  height: 83,
                                  width: 83,
                                  child: Lottie.asset(
                                    ImageConst.questionMarkAnimation,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                AppText(
                                  title: 'CancelOrder'.tr,
                                  fontWeight: FontWeight.w600,
                                  size: 16,
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11.0),
                                  child: AppText(
                                    title: 'OrdertoCancelled'.tr,
                                    textAlign: TextAlign.center,
                                    size: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.DescriptionColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    DoubleAppButton(
                                      buttonName: 'No'.tr,
                                      fontWeight: FontWeight.w500,
                                      textSize: 17,
                                      textColor: AppColors.C9Color,
                                      onTap: () {
                                        Get.back();
                                      },
                                      color: AppColors.F9grey,
                                    ),
                                    DoubleAppButton(
                                      buttonName: 'Yes'.tr,
                                      fontWeight: FontWeight.w500,
                                      textSize: 17,
                                      textColor: AppColors.primaryColor,
                                      onTap: () {
                                        Get.back();
                                      },
                                      color: AppColors.commonColor,
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
