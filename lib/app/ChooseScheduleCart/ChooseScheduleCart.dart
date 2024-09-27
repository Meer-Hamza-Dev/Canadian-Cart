// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/app/ChooseScheduleCart/Choosecartcontroller.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:table_calendar/table_calendar.dart';

class Chooseschedulecart extends StatelessWidget {
  const Chooseschedulecart({super.key});
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Cart'.tr,
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          leadingWidget: SvgPicture.asset(ImageConst.iconMenu),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: 'hereYouChooseDelivery'.tr,
              fontWeight: FontWeight.w500,
              size: 12,
            ),
            SizedBox(
              height: 25,
            ),
            AppText(
              title: 'SelectDate'.tr,
              fontWeight: FontWeight.w500,
              size: 12,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      SelectDate(today);
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 20, 0, 20),
                        child: AppText(
                          title: 'From'.tr,
                          color: AppColors.C9Color,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      SelectDate(today);
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 20, 0, 20),
                        child: AppText(
                          title: 'To'.tr,
                          color: AppColors.C9Color,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            AppText(
              title: 'SelectTime'.tr,
              fontWeight: FontWeight.w500,
              size: 12,
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                selectTime(context);
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 20, 0, 20),
                  child: AppText(
                    title: 'ChooseTime'.tr,
                    color: AppColors.C9Color,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            AppButton(
              buttonName: 'Done'.tr,
              color: AppColors.commonColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> SelectDate(DateTime today) {
    return Get.dialog(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    AppText(
                      title: 'SelectTime'.tr,
                      fontWeight: FontWeight.w600,
                      size: 15,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.F9grey,
                      ),
                      child: Column(
                        children: [
                          Material(
                            child: TableCalendar(
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
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
  }
}
