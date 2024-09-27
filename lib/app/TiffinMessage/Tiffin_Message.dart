// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';

class Tiffin_Message extends StatelessWidget {
  const Tiffin_Message({super.key});

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
                appField(
                  context: context,
                  isPrefix: true,
                  fillColor: AppColors.primaryColor,
                  hint: 'SearchMessage'.tr,
                  prefixWidget: Icon(
                    Icons.search,
                    color: AppColors.DescriptionColor,
                  ),
                ),
                SizedBox(height: 25),
                AppText(
                  title: 'AllMessage'.tr,
                  size: 17,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 25),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.messageScreenRoute);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                ImageConst.signup,
                                height: 55,
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    title: 'MR'.tr,
                                    size: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(height: 10),
                                  AppText(
                                    title: 'HeyLetsstartmeetnow'.tr,
                                    color: AppColors.DescriptionColor,
                                    size: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              AppText(
                                title: 'AM10'.tr,
                                color: AppColors.DescriptionColor,
                                size: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: AppColors.commonColor,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: AppText(
                                    title: 'One'.tr,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffFFFFFF),
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Message(),
                SizedBox(height: 15),
                Message(),
                SizedBox(height: 15),
                Message(),
              ],
            )),
      ),
    );
  }

  Container Message() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  ImageConst.signup,
                  height: 55,
                  width: 55,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'Hamza'.tr,
                      size: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 10),
                    AppText(
                      title: 'HeyLetsstartmeetnow'.tr,
                      color: AppColors.DescriptionColor,
                      fontWeight: FontWeight.w500,
                      size: 13,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppText(
                  title: 'AM10'.tr,
                  color: AppColors.DescriptionColor,
                  size: 15,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 8,
                ),
                Icon(
                  Icons.done_all,
                  color: AppColors.commonColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
