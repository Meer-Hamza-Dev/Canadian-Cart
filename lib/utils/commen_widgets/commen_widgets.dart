// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:get/get.dart';

Widget elevatedButton(String text, VoidCallback onPressed) {
  return Container(
    width: double.infinity,
    height: 57,
    decoration: BoxDecoration(
      color: AppColors.commonColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.transperentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          elevation: 0,
          shadowColor: AppColors.transperentColor),
      onPressed: onPressed,
      child: Text(
        text,
      ),
    ),
  );
}

Widget elevatedButtonOutlined(String text, VoidCallback onPressed) {
  return Container(
    width: double.infinity,
    height: 57,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.transperentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: AppColors.commonColor),
        ),
        elevation: 0,
        shadowColor: AppColors.transperentColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
      ),
    ),
  );
}

Widget lastTransactions() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromRGBO(236, 236, 236, 1),
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Image.asset(
            ImageConst.signup,
            height: 40,
            width: 40,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: 'creativeCloud'.tr,
                  fontFamily: 'main',
                  size: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(34, 39, 65, 1),
                ),
                SizedBox(height: 5),
                AppText(
                  title: 'Oct 15, 11:00 AM',
                  color: Color.fromRGBO(172, 174, 190, 1),
                ),
              ],
            ),
          ),
          AppText(
            title: r'$190',
            fontFamily: 'main',
            size: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.commonColor,
          ),
        ],
      ),
    ),
  );
}
