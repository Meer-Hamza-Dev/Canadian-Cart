import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 92,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildNavItem(ImageConst.nav1, Routes.homeScreenRoute),
              buildNavItem(ImageConst.nav2, Routes.addToCartRoute),
              SizedBox(width: 60),
              buildNavItem(ImageConst.nav4, Routes.reelsRoute),
              buildNavItem(ImageConst.nav5, Routes.accountRoute),
            ],
          ),
        ),
        Positioned(
          top: -25,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.commonColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Lottie.asset(ImageConst.nav3),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildNavItem(String assetPath, String route) {
  return InkWell(
    onTap: () {
      Get.toNamed(route);
    },
    child: SizedBox(
      width: 60,
      height: 60,
      child: Center(
        child: SvgPicture.asset(
          assetPath,
          color: (Get.currentRoute == route)
              ? AppColors.commonColor
              : Color.fromRGBO(0, 0, 0, 0.16),
        ),
      ),
    ),
  );
}
