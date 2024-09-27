// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:table_calendar/table_calendar.dart';

class Customize_Package_Save extends StatelessWidget {
  const Customize_Package_Save({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'TiffinCatering'.tr,
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
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.Orange,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Center(
                    child: AppText(
                      title: 'CustomizePackage'.tr,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              AppText(
                title: 'multipledatescalender'.tr,
                height: 1,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.F9grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 10),
                      child: Row(
                        children: [
                          AppText(
                            title: 'FullMonth'.tr,
                          ),
                          SizedBox(width: 12),
                          Container(
                            height: 20,
                            width: 47,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: CupertinoSwitch(
                                thumbColor: AppColors.primaryColor,
                                trackColor: AppColors.grey,
                                value: false,
                                onChanged: (Value) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                ),
                child: Column(
                  children: [
                    TableCalendar(
                      headerVisible: true,
                      daysOfWeekVisible: false,
                      focusedDay: today,
                      firstDay: DateTime.utc(2007, 6, 6),
                      lastDay: DateTime.utc(2024, 10, 23),
                      calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(
                          color: AppColors.commonColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      headerStyle: HeaderStyle(
                        titleTextStyle: TextStyle(
                          color: AppColors.commonColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        formatButtonVisible: false,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Customizeoption'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Breakfast(),
                      SizedBox(height: 15),
                      Breakfast(),
                      SizedBox(height: 15),
                      Breakfast(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              AppButton(
                buttonName: 'Save'.tr,
                color: AppColors.commonColor,
                onTap: () {
                  Get.toNamed(Routes.customizePkgRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container Breakfast() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.F9grey,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: AppText(
                title: 'Breakfast'.tr,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: 'Aluupiratha2'.tr,
                  size: 12,
                  color: AppColors.DescriptionColor,
                ),
                Row(
                  children: [
                    AppText(
                      title: r'Twentyfive$'.tr,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.DescriptionColor,
                    ),
                    SizedBox(width: 13),
                    Checkbox(
                      checkColor: AppColors.F9grey,
                      activeColor: AppColors.grey,
                      value: true,
                      onChanged: (Value) {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: 'Ghobipiratha2'.tr,
                  size: 12,
                  color: AppColors.DescriptionColor,
                ),
                Row(
                  children: [
                    AppText(
                      title: r'Twentyfive$'.tr,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.DescriptionColor,
                    ),
                    SizedBox(width: 13),
                    Checkbox(
                      checkColor: AppColors.primaryColor,
                      activeColor: AppColors.commonColor,
                      value: true,
                      onChanged: (Value) {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: 'Butter'.tr,
                  size: 12,
                  color: AppColors.DescriptionColor,
                ),
                Row(
                  children: [
                    AppText(
                      title: r'Twentyfive$'.tr,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.DescriptionColor,
                    ),
                    SizedBox(width: 13),
                    Checkbox(
                      checkColor: AppColors.grey,
                      activeColor: AppColors.grey,
                      value: true,
                      onChanged: (Value) {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: 'Curd'.tr,
                  size: 12,
                  color: AppColors.DescriptionColor,
                ),
                Row(
                  children: [
                    AppText(
                      title: r'Twentyfive$'.tr,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.DescriptionColor,
                    ),
                    SizedBox(width: 13),
                    Checkbox(
                      checkColor: AppColors.grey,
                      activeColor: AppColors.grey,
                      value: true,
                      onChanged: (Value) {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
