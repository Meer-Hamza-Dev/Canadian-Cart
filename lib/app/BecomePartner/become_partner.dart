// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class Become_partner extends StatelessWidget {
  const Become_partner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'BecomePartner'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.F9grey,
      ),
      backgroundColor: AppColors.F9grey,
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.grey.withOpacity(.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SafeArea(
                          minimum: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                      ImageConst.manraj,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Image(
                                    image: AssetImage(
                                      ImageConst.special,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color:
                                          AppColors.commonColor.withOpacity(.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 7),
                                      child: AppText(
                                        title: 'Off50'.tr,
                                        size: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  AppText(
                                    title: 'onallorders'.tr,
                                    size: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.green, width: 1.5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 7),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        ImageConst.whats,
                                        height: 18,
                                      ),
                                      AppText(
                                        title: 'Whatsapp'.tr,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image(
                          image: AssetImage(
                            ImageConst.dish,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 12),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image(
                        image: AssetImage(ImageConst.spon),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  AppText(
                    title: 'SwitchpartnerAccount'.tr,
                  ),
                  SizedBox(width: 20),
                  Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 60,
              color: AppColors.primaryColor,
              width: double.infinity,
              child: Center(
                child: TabBar(
                  isScrollable: true,
                  labelColor: AppColors.commonColor,
                  indicatorColor: AppColors.commonColor,
                  unselectedLabelColor: AppColors.blackColor,
                  indicator: BoxDecoration(),
                  tabs: [
                    Tab(text: 'SeeAll'.tr),
                    Tab(text: 'Restaurant'.tr),
                    Tab(text: 'Grocery'.tr),
                    Image.asset(ImageConst.filter),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 430,
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Column(
                      children: [
                        ManrajStreet(),
                        SizedBox(height: 20),
                        ManrajStreet(),
                      ],
                    ),
                  ),
                  Center(
                    child: AppText(title: 'ComingSoon'.tr),
                  ),
                  Center(
                    child: AppText(title: 'ComingSoon'.tr),
                  ),
                  Center(
                    child: AppText(title: 'ComingSoon'.tr),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container ManrajStreet() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(ImageConst.image),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'ManrajStreet'.tr,
                      fontWeight: FontWeight.w500,
                      color: AppColors.commonColor,
                      size: 15,
                    ),
                    SizedBox(height: 10),
                    AppText(
                      title: 'AddressSouthfraser'.tr,
                      size: 11,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(height: 10),
                    AppText(
                      title: 'Time7am11pm'.tr,
                      size: 11,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(height: 10),
                    AppText(
                      title: 'Openat7am'.tr,
                      size: 13,
                      color: AppColors.blackColor,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            AppButton(
              buttonName: 'GetLocation'.tr,
              color: AppColors.commonColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
