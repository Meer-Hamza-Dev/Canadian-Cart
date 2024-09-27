// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../routes/app_pages.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Inventory'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'allautodeliveryorders'.tr,
                fontWeight: FontWeight.w500,
                size: 13,
              ),
              SizedBox(height: 25),
              inventory(),
              SizedBox(height: 25),
              inventory(),
              SizedBox(height: 25),
              inventory(),
            ],
          ),
        ),
      ),
    );
  }
}

Container inventory() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.asset(
                  ImageConst.mask1,
                  height: 90,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'OatmealMashroomRice'.tr,
                          size: 11,
                          fontWeight: FontWeight.w500,
                        ),
                        AppText(
                          title: r'Twentyfive$'.tr,
                          size: 11,
                          fontWeight: FontWeight.w600,
                          color: AppColors.commonColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Deliverddays'.tr,
                            style: TextStyle(
                              color: AppColors.DescriptionColor,
                              fontFamily: 'main',
                              fontWeight: FontWeight.w300,
                              fontSize: 9,
                            ),
                          ),
                          TextSpan(
                            text: 'Aftersixdays'.tr,
                            style: TextStyle(
                              fontFamily: 'main',
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Deliverddatetime'.tr,
                            style: TextStyle(
                              color: AppColors.DescriptionColor,
                              fontFamily: 'main',
                              fontWeight: FontWeight.w300,
                              fontSize: 9,
                            ),
                          ),
                          TextSpan(
                            text: 'DateTime'.tr,
                            style: TextStyle(
                              fontFamily: 'main',
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7),
                    Row(
                      children: [
                        AppText(
                          title: 'Items'.tr,
                          fontWeight: FontWeight.w300,
                          color: AppColors.DescriptionColor,
                          size: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            ImageConst.mask1,
                            height: 12,
                            width: 12,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              ImageConst.mask1,
                              height: 12,
                              width: 12,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 4,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              ImageConst.mask1,
                              height: 12,
                              width: 12,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 4,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            ImageConst.mask1,
                            height: 12,
                            width: 12,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () {
                        Get.dialog(
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 25),
                                    child: Column(
                                      children: [
                                        AppText(
                                          title: 'SelectDate'.tr,
                                          color: AppColors.blackColor,
                                          size: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        SizedBox(height: 25),
                                        Material(
                                          child: TableCalendar(
                                            headerVisible: true,
                                            daysOfWeekVisible: false,
                                            focusedDay: DateTime.now(),
                                            firstDay: DateTime.now(),
                                            lastDay: DateTime(2100),
                                            calendarStyle: CalendarStyle(
                                              todayDecoration: BoxDecoration(
                                                color: AppColors.commonColor,
                                                shape: BoxShape.rectangle,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            headerStyle: HeaderStyle(
                                              titleTextStyle: TextStyle(
                                                fontFamily: 'main',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                color: AppColors.commonColor,
                                              ),
                                              formatButtonVisible: false,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 25),
                                        AppButton(
                                          buttonName: 'Done'.tr,
                                          color: AppColors.commonColor,
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
                      child: AppText(
                        title: 'SetupReminder'.tr,
                        fontWeight: FontWeight.w500,
                        size: 13,
                        color: AppColors.commonColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DoubleAppButton(
                  buttonName: 'Edit'.tr,
                  fontWeight: FontWeight.w500,
                  textSize: 17,
                  textColor: AppColors.C9Color,
                  onTap: () {
                    Get.toNamed(Routes.addToCartRoute);
                  },
                  color: AppColors.F9grey,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: DoubleAppButton(
                  buttonName: 'Remove'.tr,
                  fontWeight: FontWeight.w500,
                  textSize: 17,
                  textColor: AppColors.primaryColor,
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
                                            ImageConst.questionMarkAnimation)),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    AppText(
                                      title: 'RemoveQmark'.tr,
                                      size: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blackColor,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 11.0),
                                      child: AppText(
                                        title: 'Orderremovelist'.tr,
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
                                        Expanded(
                                          child: DoubleAppButton(
                                            buttonName: 'No'.tr,
                                            fontWeight: FontWeight.w500,
                                            textSize: 17,
                                            textColor: AppColors.C9Color,
                                            onTap: () {
                                              Get.back();
                                            },
                                            color: AppColors.F9grey,
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Expanded(
                                          child: DoubleAppButton(
                                            buttonName: 'Yes'.tr,
                                            fontWeight: FontWeight.w500,
                                            textSize: 17,
                                            textColor: AppColors.primaryColor,
                                            onTap: () {
                                              Get.back();
                                            },
                                            color: AppColors.commonColor,
                                          ),
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
                  color: AppColors.commonColor,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
