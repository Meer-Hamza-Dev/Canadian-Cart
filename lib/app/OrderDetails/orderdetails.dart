// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class Order_Details extends StatelessWidget {
  const Order_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Orderdetails'.tr,
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
                title: 'Hereyouseeorderdetail'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 18),
              wishlists(),
              SizedBox(height: 15),
              wishlists(),
              SizedBox(height: 15),
              wishlists(),
              SizedBox(height: 25),
              AppText(
                title: 'Orderdetails'.tr,
                fontWeight: FontWeight.w500,
                size: 13,
              ),
              SizedBox(height: 20),
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
                          title: r'$23.93'.tr,
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
                          title: r'$0.23'.tr,
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
                          title: r'$1.23'.tr,
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
                        AppText(title: r'$1.23'.tr, color: AppColors.green),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'totalAmount'.tr,
                          fontWeight: FontWeight.w700,
                        ),
                        AppText(
                          title: r'$100'.tr,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Orderdetails'.tr,
                fontWeight: FontWeight.w500,
                size: 15,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    title: 'DeliveryType'.tr,
                    color: AppColors.grey3,
                    size: 13,
                  ),
                  AppText(
                    title: 'HomeDelivery'.tr,
                    color: AppColors.grey3,
                    size: 11,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    title: 'DeliveryAddress'.tr,
                    color: AppColors.grey3,
                    size: 13,
                  ),
                  AppText(
                    title: 'Sedperspiciatisundeomnisiste'.tr,
                    color: AppColors.grey3,
                    size: 11,
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: DoubleAppButton(
                      buttonName: 'CancelOrder'.tr,
                      color: AppColors.primaryColor,
                      textColor: AppColors.C9Color,
                      onTap: () {
                        Get.toNamed(Routes.addToCartRoute);
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: DoubleAppButton(
                      buttonName: 'Done'.tr,
                      color: AppColors.commonColor,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container wishlists() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    ImageConst.mask1,
                    height: 65,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'OatmealMashroomRice'.tr,
                      fontWeight: FontWeight.w500,
                      size: 11,
                    ),
                    SizedBox(height: 4),
                    AppText(
                      title: 'ThaiFood'.tr,
                      color: AppColors.E9grey,
                      size: 10,
                    ),
                  ],
                ),
              ],
            ),
            AppText(
              title: r'Twentyfive$'.tr,
              color: AppColors.commonColor,
              fontWeight: FontWeight.w600,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
