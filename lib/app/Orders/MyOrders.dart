// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import '../../../../routes/app_pages.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'myorders'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'orderhistory'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: AppText(
                        title: 'Selectoptionorders'.tr,
                        size: 13,
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          value: 'Groceryorders'.tr,
                          child: Column(
                            children: [
                              Center(
                                child: AppText(
                                  title: 'Groceryorders'.tr,
                                  size: 12,
                                ),
                              ),
                              Divider(indent: 60, endIndent: 60, thickness: 2)
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Restaurantorders'.tr,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.myOrderRoute);
                                },
                                child: Center(
                                  child: AppText(
                                    title: 'Restaurantorders'.tr,
                                    size: 12,
                                  ),
                                ),
                              ),
                              Divider(indent: 60, endIndent: 60, thickness: 2)
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Tiffinserviceorders'.tr,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.viewAllOrderRoute);
                                },
                                child: Center(
                                  child: AppText(
                                    title: 'Tiffinserviceorders'.tr,
                                    size: 12,
                                  ),
                                ),
                              ),
                              Divider(indent: 60, endIndent: 60, thickness: 2)
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Cateringserviceorders'.tr,
                          child: Column(
                            children: [
                              Center(
                                child: AppText(
                                  title: 'Cateringserviceorders'.tr,
                                  size: 12,
                                ),
                              ),
                              Divider(
                                indent: 60,
                                endIndent: 60,
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                      ],
                      onChanged: (String? newValue) {},
                      dropdownColor: AppColors.primaryColor,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      isExpanded: true,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              loremdolor(),
              SizedBox(height: 25),
              loremdolor(),
            ],
          ),
        ),
      ),
    );
  }

  Container loremdolor() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(5, 0, 0, 15),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.orderDetailRoute);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: Image.asset(
                  ImageConst.mask3,
                  height: 100,
                  width: 340,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: 'Loremdolorsitamet'.tr,
                  fontWeight: FontWeight.w500,
                  size: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppText(
                      title: r'Twentyfive$'.tr,
                      fontWeight: FontWeight.w500,
                      color: AppColors.commonColor,
                    ),
                    SizedBox(height: 2),
                    AppText(
                      title: 'Paymentsuccessful'.tr,
                      size: 8.5,
                      color: AppColors.DescriptionColor,
                    ),
                  ],
                ),
              ],
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Deliverdtime'.tr,
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff707070),
                    ),
                  ),
                  TextSpan(
                    text: 'ElevenPM'.tr,
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Deliverddate'.tr,
                    style: TextStyle(
                      fontFamily: 'main',
                      color: Color(0xff707070),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'Date'.tr,
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.ratingRoute);
              },
              child: AppText(
                title: 'Writereview'.tr,
                fontWeight: FontWeight.w500,
                size: 13,
                color: AppColors.commonColor,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DoubleAppButton(
                    buttonName: 'Reorder'.tr,
                    textSize: 14,
                    textColor: AppColors.C9Color,
                    onTap: () {},
                    color: AppColors.Greylight2,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: DoubleAppButton(
                    buttonName: 'Returnorder'.tr,
                    textSize: 14,
                    textColor: AppColors.primaryColor,
                    color: AppColors.commonColor,
                    onTap: () {
                      Get.dialog(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: AppText(
                                          title: 'Returnorder'.tr,
                                          size: 16,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      SizedBox(height: 21),
                                      Row(
                                        children: [
                                          Material(
                                            child: Checkbox(
                                              value: false,
                                              onChanged: (bool? newValue) {},
                                              activeColor:
                                                  AppColors.commonColor,
                                            ),
                                          ),
                                          AppText(
                                            title: 'Orderdamaged'.tr,
                                            fontWeight: FontWeight.w500,
                                            size: 14,
                                            color: AppColors.blackColor,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Material(
                                            child: Checkbox(
                                              value: true,
                                              onChanged: (bool? newValue) {},
                                              activeColor:
                                                  AppColors.commonColor,
                                            ),
                                          ),
                                          AppText(
                                            title: 'dontneedproduct'.tr,
                                            size: 14,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.blackColor,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Material(
                                            child: Checkbox(
                                              value: true,
                                              onChanged: (bool? newValue) {},
                                              activeColor:
                                                  AppColors.commonColor,
                                            ),
                                          ),
                                          AppText(
                                            title: 'orderedbymistake'.tr,
                                            fontWeight: FontWeight.w500,
                                            size: 14,
                                            color: AppColors.blackColor,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Material(
                                            child: Checkbox(
                                              value: false,
                                              onChanged: (bool? newValue) {},
                                              activeColor:
                                                  AppColors.commonColor,
                                            ),
                                          ),
                                          AppText(
                                            title: 'Wantorderotherproduct'.tr,
                                            fontWeight: FontWeight.w500,
                                            size: 14,
                                            color: AppColors.blackColor,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Material(
                                        child: Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: TextFormField(
                                            textInputAction:
                                                TextInputAction.newline,
                                            keyboardType:
                                                TextInputType.multiline,
                                            maxLines: 5,
                                            decoration: InputDecoration(
                                              fillColor: AppColors.primaryColor,
                                              border: InputBorder.none,
                                              hintText: 'Writesomething'.tr,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 24),
                                      AppButton(
                                        buttonName: 'Done'.tr,
                                        color: AppColors.commonColor,
                                        onTap: () {
                                          Get.back();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
