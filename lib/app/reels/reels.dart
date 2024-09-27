// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';
import 'package:candian_cart/utils/bottom_navigation/bottom_navigation.dart';
import 'package:candian_cart/utils/drawer/app_drawer.dart';
import '../../../../routes/app_pages.dart';

class Reels extends StatelessWidget {
  Reels({super.key});
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Video'.tr,
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          leadingWidget: Container(
            height: 22,
            width: 22,
            color: AppColors.transperentColor,
            child: GestureDetector(
                onTap: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                child: SvgPicture.asset(ImageConst.iconMenu)),
          ),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.F9grey,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 25, 25, 30),
          child: Column(
            children: [
              Container(
                height: 39,
                width: 39,
                child: LottieBuilder.asset(ImageConst.homeAnimation1),
              ),
              SizedBox(height: 12),
              AppText(
                title: 'SwipeNxtVideo'.tr,
                size: 14,
              ),
              SizedBox(height: 25),
              DoubleAppButton(
                buttonName: 'Uploadyourads'.tr,
                color: AppColors.commonColor,
                buttonWidth: 180,
                onTap: () {
                  Get.toNamed(Routes.addUploadRoute);
                },
              ),
              SizedBox(height: 30),
              Reel(context),
              SizedBox(height: 30),
              Reel(context),
            ],
          ),
        ),
      ),
    );
  }

  Stack Reel(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 535,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            image: DecorationImage(
              image: AssetImage(ImageConst.videoImg2),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.blackColor.withOpacity(.35),
              borderRadius: BorderRadius.circular(11),
            ),
          ),
        ),
        Positioned.fill(
          child: SafeArea(
            minimum: EdgeInsets.fromLTRB(15, 15, 15, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AppColors.commonColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Image.asset(ImageConst.signup),
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'FigNelson'.tr,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(height: 13),
                            AppText(
                              title: 'Email'.tr,
                              color: AppColors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(ImageConst.signup),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'SpruceSpringclean'.tr,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryColor,
                              size: 13,
                            ),
                            SizedBox(height: 13),
                            AppText(
                              title: 'Etiameleifend'.tr,
                              color: AppColors.primaryColor,
                              size: 13,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(ImageConst.signup),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              title: 'InvernessMcKenzie'.tr,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryColor,
                              size: 13,
                            ),
                            SizedBox(height: 13),
                            AppText(
                              title: 'Namvariusultrices'.tr,
                              color: AppColors.primaryColor,
                              size: 13,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: appField(
                                context: context,
                                hint: 'Writesomething'.tr,
                                height: 8,
                                hintSize: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SvgPicture.asset(ImageConst.send),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
