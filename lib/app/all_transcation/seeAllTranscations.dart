// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/commen_widgets/commen_widgets.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:get/get.dart';

class AllTranscation extends StatelessWidget {
  const AllTranscation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'wallet'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 20, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: 'viewAllTransaction'.tr,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 30),
            lastTransactions(),
            SizedBox(height: 16),
            lastTransactions(),
            SizedBox(height: 16),
            lastTransactions(),
            SizedBox(height: 16),
            lastTransactions(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
