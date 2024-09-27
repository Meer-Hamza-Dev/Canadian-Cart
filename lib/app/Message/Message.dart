// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';
import 'package:get/get.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 20, 25, 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  ImageConst.signup,
                  height: 45,
                  width: 45,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'MR'.tr,
                      fontWeight: FontWeight.w500,
                      size: 16,
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        AppText(
                          title: 'Online'.tr,
                          color: AppColors.DescriptionColor,
                          size: 12,
                        ),
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 40),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF4F8FC),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                    child: AppText(
                      title: 'AM10'.tr,
                      color: AppColors.grey3,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(244, 248, 252, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Container(
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 4,
                        right: 15,
                      ),
                      child: appField(
                          context: context,
                          prefixWidget: Icon(Icons.mic_none),
                          isPrefix: true,
                          hint: 'Writehere'.tr,
                          fillColor: AppColors.greyLight),
                    ),
                  ),
                  SvgPicture.asset(ImageConst.notes),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.commonColor,
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.send_outlined,
                        color: AppColors.primaryColor,
                      ),
                    ),
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
