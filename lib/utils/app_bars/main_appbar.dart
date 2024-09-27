// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({
    super.key,
    this.title,
    this.width,
    this.child,
    this.size,
    this.imageSuffix,
    this.imageSuffix2,
    this.onTap,
    this.leadingWidget,
    this.icon = 'assets/images/backBtn.svg',
    this.color,
  });
  final String? title;
  final String icon;
  double? width;
  double? size;
  VoidCallback? onTap;
  Widget? child;
  Widget? imageSuffix;
  Widget? imageSuffix2;
  Widget? leadingWidget;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width ?? 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leadingWidget ??
              GestureDetector(
                onTap: onTap ??
                    () {
                      Get.back();
                    },
                child: SvgPicture.asset(icon),
              ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: child ??
                AppText(
                  title: '$title',
                  fontWeight: FontWeight.w400,
                  size: size ?? 18,
                ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.walletScreenRoute);
                },
                child: imageSuffix ??
                    SvgPicture.asset(
                      'assets/images/wallet.svg',
                      color: Colors.transparent,
                    ),
              ),
              SizedBox(width: 12),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.notificationRoute);
                },
                child: imageSuffix2 ??
                    SvgPicture.asset(
                      'assets/images/notification.svg',
                      color: Colors.transparent,
                    ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
