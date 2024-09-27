// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class Cart_Added extends StatelessWidget {
  const Cart_Added({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Cart'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'Hereyouseeaddeditems'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.Yellow,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Column(
                    children: [
                      AppText(
                        title: 'Basicpackage'.tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 5),
                      AppText(
                        title: 'TwoKSales'.tr,
                        size: 13,
                      ),
                      SizedBox(height: 5),
                      AppText(
                        title: r'SixSixtyM$'.tr,
                        fontWeight: FontWeight.w700,
                        size: 18,
                        color: AppColors.commonColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Menuitems'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 11),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        title: 'Breakfast'.tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 6),
                      AppText(
                        title: 'ParathaButter'.tr,
                        size: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColors.DescriptionColor,
                      ),
                      SizedBox(height: 15),
                      AppText(
                        title: 'Lunch'.tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 6),
                      AppText(
                        title: 'ThaliSabziRoti'.tr,
                        size: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColors.DescriptionColor,
                      ),
                      SizedBox(height: 15),
                      AppText(
                        title: 'Dinner'.tr,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 6),
                      AppText(
                        title: 'ThaliRotiSweedish'.tr,
                        size: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColors.DescriptionColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Customizeoption'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        title: 'Breakfast'.tr,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 6),
                      AppText(
                        title: 'Aluupiratha'.tr,
                        size: 12,
                        color: AppColors.DescriptionColor,
                      ),
                      SizedBox(height: 6),
                      AppText(
                        title: 'Ghobipiratha'.tr,
                        size: 12,
                        color: AppColors.DescriptionColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'subtotal'.tr,
                          color: AppColors.grey3,
                        ),
                        AppText(
                          title: r'$23.93',
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'PST'.tr,
                          color: AppColors.grey3,
                        ),
                        AppText(
                          title: r'$0.23',
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'GST'.tr,
                          color: AppColors.grey3,
                        ),
                        AppText(
                          title: r'$0.23',
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'deliveryCharges'.tr,
                          color: AppColors.grey3,
                        ),
                        AppText(
                          title: r'$1.23',
                          color: AppColors.grey3,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'studentDiscount'.tr,
                          color: AppColors.grey3,
                        ),
                        AppText(title: r'$1.23', color: AppColors.green),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'totalAmount',
                          fontWeight: FontWeight.w700,
                        ),
                        AppText(
                          title: r'$100',
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'DeliveryAddress'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  appField(
                    context: context,
                    hint: 'Writehere'.tr,
                    fillColor: AppColors.primaryColor,
                    max: 4,
                  ),
                  Positioned(
                    right: 8,
                    top: 10,
                    child: Icon(
                      Icons.edit_outlined,
                      size: 15,
                      color: AppColors.commonColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              AppButton(
                buttonName: 'Proceed'.tr,
                color: AppColors.commonColor,
                onTap: () {
                  Get.toNamed(Routes.addToCartRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
