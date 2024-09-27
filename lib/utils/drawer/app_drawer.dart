// ignore_for_file: prefer_const_constructors

import 'package:candian_cart/app/auth/social_login/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/app/home/home_controller.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationHelper authHelper = Get.find<AuthenticationHelper>();
    return Drawer(
      backgroundColor: Color(0xffF9F9F9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(top: 40, left: 20, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(ImageConst.pointred),
                    SizedBox(width: 7),
                    AppText(
                      title: '120',
                      size: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.commonColor,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        ImageConst.signup,
                        height: 57,
                        width: 53,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() => Text(
                                authHelper.userName.value.isNotEmpty
                                    ? "Name: ${authHelper.userName.value}"
                                    : "Name not available",
                                style: TextStyle(fontSize: 18),
                              )),
                          SizedBox(height: 10),
                          Obx(() => Text(
                                authHelper.userEmail.value.isNotEmpty
                                    ? "Email: ${authHelper.userEmail.value}"
                                    : "Email not available",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffBBBBBB)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              minimum: EdgeInsets.only(bottom: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      Get.toNamed(Routes.myOrderRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.Orders),
                            SizedBox(width: 14),
                            AppText(
                              title: "myorders".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.inventoryRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.inventory),
                            SizedBox(width: 14),
                            AppText(
                              title: "inventory".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.wishListRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.wishlist),
                            SizedBox(width: 14),
                            AppText(
                              title: "wishlist".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.flayerRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.flyers),
                            SizedBox(
                              width: 14,
                            ),
                            AppText(
                              title: "flyers".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                      child: Row(
                        children: [
                          SvgPicture.asset(ImageConst.Mrspecial),
                          SizedBox(width: 14),
                          AppText(
                            title: "mrSpecial".tr,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.put(HomeController()).updateIndexValue(1);
                      Get.back();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.Gifts),
                            SizedBox(width: 14),
                            AppText(
                              title: "gifts".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.put(HomeController()).updateIndexValue(2);
                      Get.back();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.Coupons),
                            SizedBox(width: 14),
                            AppText(
                              title: "coupons".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.tiffinCateringRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.tiffin),
                            SizedBox(width: 14),
                            AppText(
                              title: "tiffinCat".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.visitingCardRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.visiting),
                            SizedBox(width: 14),
                            AppText(
                              title: "visitCard".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.studentDiscountRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.stuDis),
                            SizedBox(width: 14),
                            AppText(
                              title: "studDisc".tr,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.referEarnRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.refearn),
                            SizedBox(width: 14),
                            AppText(
                              title: "referEarn".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.becomePartnerRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.becPart),
                            SizedBox(width: 14),
                            AppText(
                              title: "becomPart".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.promoteBusinessRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 17, 0, 17),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConst.promBusi),
                            SizedBox(width: 14),
                            AppText(
                              title: "promotBusin".tr,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 39),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: AppColors.commonColor),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shadowColor: AppColors.transperentColor,
                          backgroundColor: AppColors.transperentColor),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 22.0),
                        child: AppText(
                          title: 'Sign Out',
                          size: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
