// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';
import '../../../../routes/app_pages.dart';

class Upload_Banner extends StatelessWidget {
  const Upload_Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Promotebusiness'.tr,
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
                title: 'UploadBanner'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Email'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Typeemail'.tr,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
                height: 18,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Phonenumber'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Writemobilenumberhere'.tr,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
                height: 18,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Whatsappnumber'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Enterwhatsapp'.tr,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
                height: 18,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'WebsiteURL'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Pastewebsiteurl'.tr,
                hintSize: 13,
                fillColor: AppColors.primaryColor,
                height: 18,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'SelectDate'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: appField(
                      context: context,
                      hint: 'From'.tr,
                      hintSize: 13,
                      fillColor: AppColors.primaryColor,
                      height: 18,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: appField(
                      context: context,
                      hint: 'To'.tr,
                      hintSize: 13,
                      fillColor: AppColors.primaryColor,
                      height: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              AppText(
                title: 'SelectTime'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: appField(
                      context: context,
                      hint: 'From'.tr,
                      hintSize: 13,
                      fillColor: AppColors.primaryColor,
                      height: 18,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: appField(
                      context: context,
                      hint: 'To'.tr,
                      hintSize: 13,
                      fillColor: AppColors.primaryColor,
                      height: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Reachareas'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: 'SelectReachAreas'.tr,
                        fontWeight: FontWeight.w500,
                        size: 12,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.commonColor,
                        size: 28,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              AppText(
                title: 'UploadBanner'.tr,
                fontWeight: FontWeight.w500,
                size: 13,
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 41.0),
                  child: Center(
                    child: DoubleAppButton(
                      buttonName: 'UploadImage'.tr,
                      textColor: AppColors.primaryColor,
                      color: AppColors.commonColor,
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AppText(
                title: 'SelectPackage'.tr,
                fontWeight: FontWeight.w500,
                size: 13,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Radio(
                            activeColor: AppColors.commonColor,
                            value: true,
                            groupValue: true,
                            onChanged: (Value) {},
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.Yellow,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: SvgPicture.asset(ImageConst.star),
                        ),
                      ),
                      SizedBox(height: 20),
                      BasicPlan(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Radio(
                            activeColor: AppColors.commonColor,
                            value: false,
                            groupValue: false,
                            onChanged: (Value) {},
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: SvgPicture.asset(ImageConst.star),
                        ),
                      ),
                      SizedBox(height: 20),
                      BasicPlan(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Radio(
                            activeColor: AppColors.commonColor,
                            value: false,
                            groupValue: false,
                            onChanged: (Value) {},
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.StandardGreen,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: SvgPicture.asset(ImageConst.star),
                        ),
                      ),
                      SizedBox(height: 20),
                      BasicPlan(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              AppButton(
                buttonName: 'Pay'.tr,
                color: AppColors.commonColor,
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      height: 260,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 7, 25, 25),
                        child: Column(
                          children: [
                            Container(
                              height: 4,
                              width: 69,
                              decoration: BoxDecoration(
                                color: AppColors.commonColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            SizedBox(height: 25),
                            AppText(
                              title: 'Payment'.tr,
                              size: 17,
                            ),
                            SizedBox(height: 25),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.F9grey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(ImageConst.stripe),
                                    Container(
                                      height: 27,
                                      width: 27,
                                      decoration: BoxDecoration(
                                        color: AppColors.commonColor,
                                        borderRadius: BorderRadius.circular(27),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.done,
                                          color: AppColors.primaryColor,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: DoubleAppButton(
                                    buttonName: 'Cancel'.tr,
                                    color: AppColors.F9grey,
                                    textColor: AppColors.C9Color,
                                    onTap: () {
                                      Get.back();
                                    },
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: DoubleAppButton(
                                    buttonName: 'Done'.tr,
                                    color: AppColors.commonColor,
                                    textColor: AppColors.primaryColor,
                                    onTap: () {
                                      Get.back();
                                      Get.dialog(
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 25.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          15, 15, 25, 25),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 83,
                                                        width: 83,
                                                        child: Lottie.asset(
                                                            ImageConst.Done),
                                                      ),
                                                      SizedBox(
                                                        height: 13,
                                                      ),
                                                      AppText(
                                                        title: 'AdPublished'.tr,
                                                        size: 14,
                                                        color: AppColors
                                                            .blackColor,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal:
                                                                    11.0),
                                                        child: AppText(
                                                          title:
                                                              'YourbannerAd'.tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          size: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: AppColors
                                                              .DescriptionColor,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 25,
                                                      ),
                                                      AppButton(
                                                        buttonName: 'Done'.tr,
                                                        color: AppColors
                                                            .commonColor,
                                                        onTap: () {
                                                          Get.toNamed(Routes
                                                              .bannerAdDesignRoute);
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
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Column BasicPlan() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppText(
        title: 'BasicPlan'.tr,
        size: 23,
        fontWeight: FontWeight.w700,
      ),
      SizedBox(height: 8),
      AppText(
        title: 'BasicDescription'.tr,
        color: AppColors.E9grey,
        size: 15,
        height: 1.8,
      ),
      SizedBox(height: 20),
      Text.rich(
        TextSpan(
          text: r'$29'.tr,
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.w700,
            fontFamily: 'main',
          ),
          children: [
            TextSpan(
              text: 'month'.tr,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: AppColors.E9grey,
                fontFamily: 'main',
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 25),
      Row(
        children: [
          Icon(
            Icons.done,
            color: AppColors.green,
          ),
          SizedBox(width: 20),
          AppText(
            title: 'RapidSharing'.tr,
            size: 15,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
      SizedBox(height: 15),
      Row(
        children: [
          Icon(
            Icons.done,
            color: AppColors.green,
          ),
          SizedBox(width: 20),
          AppText(
            title: 'HighConversionrate'.tr,
            size: 15,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
      SizedBox(height: 15),
      Row(
        children: [
          Icon(
            Icons.done,
            color: AppColors.green,
          ),
          SizedBox(width: 20),
          AppText(
            title: 'CustomizableUSERLOcation'.tr,
            size: 15,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    ],
  );
}
