// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Notification'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 10, 25, 0),
        child: Column(
          children: [
            notification(),
            SizedBox(height: 20),
            notification(),
            SizedBox(height: 20),
            notification(),
            SizedBox(height: 20),
            notification(),
          ],
        ),
      ),
    );
  }

  Container notification() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0xff0000000F),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 25, 15),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.F9grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 21),
                child: SvgPicture.asset(
                  ImageConst.notiBig,
                ),
              ),
            ),
            SizedBox(width: 15),
            AppText(
              title: 'notification'.tr,
              fontWeight: FontWeight.w500,
              size: 12,
              height: 1.8,
            ),
          ],
        ),
      ),
    );
  }
}
