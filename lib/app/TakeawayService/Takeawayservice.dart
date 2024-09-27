// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class Takeaway_Service extends StatelessWidget {
  const Takeaway_Service({super.key});

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
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 20, 25, 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    ImageConst.homeImage1,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          title: 'TakeawayServices'.tr,
                          size: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 3),
                        AppText(
                          title: 'Toprated'.tr,
                          size: 12,
                          color: AppColors.E9grey,
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.starColor,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.starColor,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.starColor,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.starColor,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.grey,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            AppText(
                              title: 'r45'.tr,
                              color: AppColors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    AppText(
                      title: r'Twentyfive$'.tr,
                      size: 13,
                      color: AppColors.commonColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                AppText(
                  title: 'Description'.tr,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 15),
                AppText(
                  title: 'LoremDescription'.tr,
                  height: 1.3,
                  size: 13,
                  color: AppColors.DescriptionColor,
                ),
                SizedBox(height: 15),
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
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'ParathaButter'.tr,
                                style: TextStyle(
                                  fontFamily: 'main',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.DescriptionColor,
                                ),
                              ),
                              TextSpan(text: '  '),
                              TextSpan(
                                text: r'$220'.tr,
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
                        SizedBox(height: 15),
                        AppText(
                          title: 'Lunch'.tr,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 6),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'ThaliSabziRoti'.tr,
                                style: TextStyle(
                                  fontFamily: 'main',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.DescriptionColor,
                                ),
                              ),
                              TextSpan(text: '  '),
                              TextSpan(
                                text: r'$220'.tr,
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
                        SizedBox(height: 15),
                        AppText(
                          title: 'Dinner'.tr,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 6),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'ThaliRotiSweedish'.tr,
                                style: TextStyle(
                                  fontFamily: 'main',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.DescriptionColor,
                                ),
                              ),
                              TextSpan(text: '  '),
                              TextSpan(
                                text: r'$220'.tr,
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppButton(
              buttonName: 'Buy'.tr,
              textColor: AppColors.primaryColor,
              textSize: 17,
              color: AppColors.commonColor,
              onTap: () {
                Get.toNamed(Routes.takewayCartRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
