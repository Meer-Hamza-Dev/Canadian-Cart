// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class WishListDetail extends StatelessWidget {
  const WishListDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Wishlist'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 20, 25, 30),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: 'FoodDetail'.tr,
                    fontWeight: FontWeight.w500,
                    size: 13,
                  ),
                  SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: Image.asset(
                      ImageConst.mask3,
                      width: 365,
                      height: 147,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: AppText(
                          title: 'OatmealMashroomRice'.tr,
                          fontWeight: FontWeight.w500,
                          size: 14,
                        ),
                      ),
                      AppText(
                        title: r'Twentyfive$'.tr,
                        size: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.commonColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    child: AppText(
                      title: 'WishlistDetail'.tr,
                      color: AppColors.DescriptionColor,
                      size: 11,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Deliverdtime'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w300,
                      ),
                      children: [
                        TextSpan(
                          text: 'TwentytofiveMin'.tr,
                          style: TextStyle(
                            fontFamily: 'main',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.commonColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.2),
                            child: Icon(Icons.remove,
                                color: AppColors.primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 11),
                      AppText(
                        title: 'One'.tr,
                        size: 18,
                      ),
                      SizedBox(width: 11),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.commonColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.2),
                            child: Icon(
                              Icons.add,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppButton(
              buttonName: 'Addtocart'.tr,
              color: AppColors.commonColor,
              onTap: () {
                Get.toNamed(Routes.addToCartRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
