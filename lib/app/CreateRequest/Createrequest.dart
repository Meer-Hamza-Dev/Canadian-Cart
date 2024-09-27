// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class Create_Request extends StatelessWidget {
  const Create_Request({super.key});

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
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'Createrequestservicesprovider'.tr,
                fontWeight: FontWeight.w500,
                size: 14,
              ),
              SizedBox(height: 25),
              AppText(
                title: 'Event'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Writeeventname'.tr,
                fillColor: AppColors.primaryColor,
                height: 18,
                hintSize: 13,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'EventType'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Writeeventtype'.tr,
                fillColor: AppColors.primaryColor,
                height: 18,
                hintSize: 13,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Description'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              appField(
                context: context,
                hint: 'Writedescription'.tr,
                fillColor: AppColors.primaryColor,
                height: 18,
                hintSize: 13,
              ),
              SizedBox(
                height: 15,
              ),
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
                fillColor: AppColors.primaryColor,
                height: 18,
                hintSize: 13,
              ),
              SizedBox(
                height: 15,
              ),
              AppText(
                title: 'Email'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              appField(
                context: context,
                hint: 'Typeemail'.tr,
                fillColor: AppColors.primaryColor,
                height: 18,
                hintSize: 13,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Address'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              appField(
                context: context,
                hint: 'enteraddress'.tr,
                fillColor: AppColors.primaryColor,
                height: 18,
                hintSize: 13,
              ),
              SizedBox(
                height: 15,
              ),
              AppText(
                title: 'SelectDate'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: appField(
                      context: context,
                      hint: 'From'.tr,
                      fillColor: AppColors.primaryColor,
                      height: 18,
                      hintSize: 13,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: appField(
                      context: context,
                      hint: 'To'.tr,
                      fillColor: AppColors.primaryColor,
                      height: 18,
                      hintSize: 13,
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
              appField(
                context: context,
                hint: 'ChooseTime'.tr,
                fillColor: AppColors.primaryColor,
                height: 18,
                hintSize: 13,
              ),
              SizedBox(height: 15),
              AppText(
                title: 'Uploadattachmenthere'.tr,
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
                    child: AppButton(
                      buttonName: 'Upload'.tr,
                      color: AppColors.commonColor,
                      buttonWidth: 140,
                      buttonHeight: 50,
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              AppText(
                title: 'ChooseRequestreach'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'OnlyCurrentserviceprovider'.tr,
                                  style: TextStyle(
                                    fontFamily: 'main',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.DescriptionColor,
                                  ),
                                ),
                                TextSpan(text: '  '),
                                TextSpan(
                                  text: 'Free'.tr,
                                  style: TextStyle(
                                    fontFamily: 'main',
                                    fontSize: 12,
                                    color: AppColors.commonColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Radio(
                            activeColor: AppColors.commonColor,
                            value: true,
                            groupValue: (true),
                            onChanged: (Value) {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Firsttopratedservicesproviders'.tr,
                                  style: TextStyle(
                                    fontFamily: 'main',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.DescriptionColor,
                                  ),
                                ),
                                TextSpan(text: '  '),
                                TextSpan(
                                  text: r'Twentyfive$'.tr,
                                  style: TextStyle(
                                    fontFamily: 'main',
                                    fontSize: 12,
                                    color: AppColors.commonColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Radio(
                            activeColor: AppColors.commonColor,
                            value: true,
                            groupValue: (true),
                            onChanged: (Value) {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'AllServicesProvider'.tr,
                                  style: TextStyle(
                                    fontFamily: 'main',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.DescriptionColor,
                                  ),
                                ),
                                TextSpan(text: '  '),
                                TextSpan(
                                  text: r'Twentyfive$'.tr,
                                  style: TextStyle(
                                    fontFamily: 'main',
                                    fontSize: 12,
                                    color: AppColors.commonColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Radio(
                            activeColor: AppColors.commonColor,
                            value: true,
                            groupValue: (true),
                            onChanged: (Value) {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              AppButton(
                buttonName: 'Createrequest'.tr,
                color: AppColors.commonColor,
                onTap: () {
                  Get.toNamed(Routes.cateringDetailRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
