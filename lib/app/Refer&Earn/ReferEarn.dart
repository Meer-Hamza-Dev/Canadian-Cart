// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class Refer_Earn extends StatelessWidget {
  const Refer_Earn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'ReferEarn'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 25, 25, 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    ImageConst.coins,
                    height: 83,
                    width: 102,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    child: Column(
                      children: [
                        AppText(
                          title: 'ReferFriends'.tr,
                          size: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 10),
                        AppText(
                          title: 'AndEarn'.tr,
                        ),
                        SizedBox(height: 10),
                        AppText(
                          title: r'ForEvery$1'.tr,
                          size: 18,
                          color: AppColors.commonColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                AppText(
                  title: 'ReferId'.tr,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 19.0, horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'LSUBK'.tr,
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        SvgPicture.asset(ImageConst.copy),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppButton(
              buttonName: 'ShareFriends'.tr,
              color: AppColors.commonColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
