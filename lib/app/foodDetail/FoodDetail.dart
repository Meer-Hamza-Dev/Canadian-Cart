// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/app/foodDetail/food_detail_controller.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final FoodDetailController c = Get.put(FoodDetailController());

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Home'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 20, 25, 30),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: 'foodDetail'.tr,
                    fontWeight: FontWeight.w500,
                    size: 13,
                  ),
                  SizedBox(height: 30),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Image.asset(
                          ImageConst.mask3,
                          width: 365,
                          height: 147,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(11),
                            bottomLeft: Radius.circular(11),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                          child: AppText(
                            title: 'Flat 50% \nOFF',
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: AppText(
                          title: 'dishName'.tr,
                          fontWeight: FontWeight.w500,
                          size: 14,
                        ),
                      ),
                      AppText(
                        title: r'$16.00',
                        size: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.commonColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 320,
                    child: AppText(
                      title: 'dishDetail'.tr,
                      color: AppColors.grey,
                      size: 13,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'delivery'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w300,
                      ),
                      children: [
                        TextSpan(
                          text: 'deliveryTime'.tr,
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
                        onTap: () {
                          c.decrement();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF33F41),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.2),
                            child: Icon(
                              Icons.remove,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11),
                      Obx(
                        () => Text(
                          '${c.count}',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'main',
                          ),
                        ),
                      ),
                      SizedBox(width: 11),
                      GestureDetector(
                        onTap: () {
                          c.increment();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF33F41),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.2),
                            child: Icon(
                              Icons.add,
                              color: Color(0xffFFFFFF),
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
              buttonName: 'addtoCart'.tr,
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
