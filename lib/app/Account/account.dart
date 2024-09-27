// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:candian_cart/app/Account/accountController.dart';
import 'package:candian_cart/services/app_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/bottom_navigation/bottom_navigation.dart';
import 'package:candian_cart/utils/drawer/app_drawer.dart';
import '../../../../routes/app_pages.dart';

class Account extends StatelessWidget {


  
  Account({super.key});
  final Accountcontroller controller = Accountcontroller();
  final LanguageService languageService = Get.find();

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
          title: 'Account'.tr,
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
              child: SvgPicture.asset(ImageConst.iconMenu),
            ),
          ),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.F9grey,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(25, 10, 25, 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.profileRoute);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                ImageConst.signup,
                                height: 79,
                                width: 79,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    title: 'loremIpsum'.tr,
                                    size: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(height: 10),
                                  AppText(
                                    title: 'Email'.tr,
                                    size: 14,
                                    color: AppColors.commonColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset(ImageConst.userEdit),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  height: 476,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(43),
                      topRight: Radius.circular(43),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(17, 35, 17, 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(Routes.notificationRoute);
                                  },
                                  child: Row(
                                    children: [
                                      Image.asset(ImageConst.noti),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      AppText(
                                        title: 'Notification'.tr,
                                        size: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                                Switch(
                                  value: true,
                                  activeColor: AppColors.primaryColor,
                                  activeTrackColor: AppColors.commonColor,
                                  onChanged: (bool value) {},
                                )
                              ],
                            ),
                            Divider(indent: 32.5),
                            SizedBox(height: 25.5),
                            GestureDetector(
                              onTap: () {
                                Get.bottomSheet(
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 8),
                                      child: Obx(() {
                                        return Column(
                                          children: [
                                            Container(
                                              height: 4,
                                              width: 69,
                                              decoration: BoxDecoration(
                                                color: AppColors.commonColor,
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            AppText(
                                              title: 'language'.tr,
                                              size: 17,
                                            ),
                                            SizedBox(height: 35),
                                            Expanded(
                                              child: ListView(
                                                children: [
                                                  SelectLanguage(
                                                    text: 'English',
                                                    contText: 'english',
                                                    langCode: 'en',
                                                    countryCode: 'US',
                                                    saveLang: 'en',
                                                  ),
                                                  SizedBox(height: 15),
                                                  SelectLanguage(
                                                    text: 'Punjabi',
                                                    contText: 'punjabi',
                                                    langCode: 'pa',
                                                    countryCode: 'IN',
                                                    saveLang: 'pa',
                                                  ),
                                                  SizedBox(height: 15),
                                                  SelectLanguage(
                                                    text: 'Spanish',
                                                    contText: 'spanish',
                                                    langCode: 'es',
                                                    countryCode: 'ES',
                                                    saveLang: 'es',
                                                  ),
                                                  SizedBox(height: 15),
                                                  SelectLanguage(
                                                    text: 'Italian',
                                                    contText: 'italian',
                                                    langCode: 'it',
                                                    countryCode: 'IT',
                                                    saveLang: 'it',
                                                  ),
                                                  SizedBox(height: 15),
                                                  SelectLanguage(
                                                    text: 'German',
                                                    contText: 'german',
                                                    langCode: 'de',
                                                    countryCode: 'DE',
                                                    saveLang: 'de',
                                                  ),
                                                  SizedBox(height: 15),
                                                  SelectLanguage(
                                                    text: 'French',
                                                    contText: 'french',
                                                    langCode: 'fr',
                                                    countryCode: 'FR',
                                                    saveLang: 'fr',
                                                  ),
                                                  SizedBox(height: 15),
                                                  SelectLanguage(
                                                    text: 'Tagalog',
                                                    contText: 'tagalog',
                                                    langCode: 'tl',
                                                    countryCode: 'PH',
                                                    saveLang: 'tl',
                                                  ),
                                                  SizedBox(height: 15),
                                                  SelectLanguage(
                                                    text: 'Chinese',
                                                    contText: 'chinese',
                                                    langCode: 'zh',
                                                    countryCode: 'CN',
                                                    saveLang: 'zh',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                    ),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Image.asset(ImageConst.lang),
                                  SizedBox(width: 15),
                                  AppText(
                                    title: 'LanguageSetting'.tr,
                                    size: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            Divider(indent: 32.5),
                            SizedBox(height: 25.5),
                            Row(
                              children: [
                                Image.asset(ImageConst.adjust),
                                SizedBox(width: 15),
                                AppText(
                                  title: 'AppPreference'.tr,
                                  size: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            Divider(indent: 32.5),
                            SizedBox(height: 25.5),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.helpSupportRoute);
                              },
                              child: Row(
                                children: [
                                  Image.asset(ImageConst.path),
                                  SizedBox(width: 15),
                                  AppText(
                                    title: 'HelpSupport'.tr,
                                    size: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            Divider(indent: 32.5),
                          ],
                        ),
                        AppButton(
                          buttonName: 'Logout'.tr,
                          color: AppColors.commonColor,
                          onTap: () {
                            Get.toNamed(Routes.signInScreenRoute);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget SelectLanguage({
    required String text,
    required String contText,
    required String langCode,
    required String countryCode,
    required String saveLang,
  }) {
    return GestureDetector(
      onTap: () {
        controller.updateValueType(contText);
        controller.changeLanguage(langCode, countryCode);
        languageService.saveLanguage(saveLang);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              title: text,
              fontWeight: FontWeight.w500,
              size: 14,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.commonColor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                    color: controller.seletedValuetype.value == contText
                        ? AppColors.commonColor
                        : AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
