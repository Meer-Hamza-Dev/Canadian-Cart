// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/app/add_to_cart/addtocartcontroller.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';
import 'package:candian_cart/utils/bottom_navigation/bottom_navigation.dart';
import 'package:candian_cart/utils/drawer/app_drawer.dart';
import '../../../../routes/app_pages.dart';

class AddToCart extends StatelessWidget {
  AddToCart({super.key});

  final Addtocartcontroller controller = Addtocartcontroller();
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
          title: 'Cart'.tr,
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
      backgroundColor: AppColors.greyLight,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'seeAddItems'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15),
              CartDetail(),
              SizedBox(height: 15),
              CartDetail(),
              SizedBox(height: 15),
              CartDetail(),
              SizedBox(height: 25),
              AppText(
                title: 'orderDetail'.tr,
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
                          title: r'$23.93',
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
                          title: r'$0.23',
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
                          title: r'$1.23',
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
                        AppText(title: r'$1.23', color: AppColors.green),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          title: 'Total Amount',
                          fontWeight: FontWeight.w700,
                        ),
                        AppText(
                          title: r'$100',
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'selectType'.tr,
                size: 13,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Obx(() {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: 'homeDelivery'.tr,
                              size: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.E9grey,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.updateValueType("delivery");
                              },
                              child: Container(
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
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                      color:
                                          controller.seletedValuetype.value ==
                                                  "delivery"
                                              ? AppColors.commonColor
                                              : AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: 'pickup'.tr,
                              size: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.E9grey,
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
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    color: controller.seletedValuetype.value ==
                                            "Pickup"
                                        ? AppColors.commonColor
                                        : AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: 'Schedule'.tr,
                              size: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.E9grey,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.updateValueType("schedule");
                              },
                              child: Container(
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
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                      color:
                                          controller.seletedValuetype.value ==
                                                  "schedule"
                                              ? AppColors.commonColor
                                              : AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'addGift'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(100, 30, 100, 30),
                  child: Center(
                    child: Container(
                      height: 38,
                      width: 122,
                      decoration: BoxDecoration(
                        color: AppColors.commonColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Lottie.asset(ImageConst.gift),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'redeCoupon'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, top: 4),
                          child: appField(
                            context: context,
                            height: 17,
                            hint: 'couponCode'.tr,
                            hintSize: 12,
                            hintColor: AppColors.blackColor.withOpacity(.4),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: DoubleAppButton(
                        buttonName: 'redeem'.tr,
                        buttonWidth: 104,
                        color: AppColors.commonColor,
                        onTap: () {},
                        buttonHeight: 38,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'selectOffer'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.commonColor),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 7, 8, 7),
                        child: AppText(
                          title: 'Buy1Get1Free'.tr,
                          color: AppColors.commonColor,
                          fontWeight: FontWeight.w500,
                          size: 10,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 7, 8, 7),
                        child: AppText(
                          title: 'Per50'.tr,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w500,
                          size: 10,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(7, 7, 8, 7),
                        child: AppText(
                          title: 'Flat30'.tr,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w500,
                          size: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Obx(
                () {
                  return Column(
                    children: [
                      controller.seletedValuetype.value == "delivery"
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: 'DeliveryAddress'.tr,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 20),
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.primaryColor,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 23, 10),
                                        child: appField(
                                          context: context,
                                          hint: 'Writehere'.tr,
                                          fillColor: AppColors.primaryColor,
                                          isBorderLine: false,
                                          max: 5,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 8,
                                      top: 22,
                                      child: Icon(
                                        Icons.edit,
                                        size: 15,
                                        color: AppColors.commonColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                controller.seletedValuetype.value == 'schedule'
                                    ? AppText(
                                        title: 'Selectoption'.tr,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      )
                                    : SizedBox(height: 15),
                                SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 14, 15, 14),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText(
                                          title: 'doSelectAutoDeliver'.tr,
                                          // fontWeight: FontWeight.w500,
                                          size: 9.5,
                                          color: AppColors.DescriptionColor,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            border: Border.all(
                                              color: AppColors.commonColor,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                color: AppColors.commonColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 25),
                                AppText(
                                  title: 'DeliveryAddress'.tr,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 20),
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.primaryColor,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 23, 10),
                                        child: appField(
                                          context: context,
                                          hint: 'Writehere'.tr,
                                          fillColor: AppColors.primaryColor,
                                          isBorderLine: false,
                                          max: 5,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 8,
                                      top: 22,
                                      child: Icon(
                                        Icons.edit,
                                        size: 15,
                                        color: AppColors.commonColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                    ],
                  );
                },
              ),
              SizedBox(height: 30),
              Obx(
                () {
                  return AppButton(
                    buttonName: 'Proceed'.tr,
                    color: AppColors.commonColor,
                    onTap: controller.seletedValuetype.value == "delivery"
                        ? () {
                            Get.dialog(
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25.0, vertical: 16),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 93,
                                              width: 93,
                                              child: Lottie.asset(ImageConst
                                                  .questionMarkAnimation),
                                            ),
                                            SizedBox(height: 12),
                                            AppText(
                                              title: 'AutoOrder'.tr,
                                              size: 15,
                                              color: AppColors.blackColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(height: 12),
                                            AppText(
                                              title: 'DoAutoDelivery'.tr,
                                              size: 15,
                                              textAlign: TextAlign.center,
                                              color: AppColors.DescriptionColor,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5,
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                DoubleAppButton(
                                                  buttonName: 'No'.tr,
                                                  color: AppColors.F9grey,
                                                  textColor: AppColors.C9Color,
                                                  onTap: () {
                                                    Get.back();
                                                  },
                                                ),
                                                DoubleAppButton(
                                                  buttonName: 'Yes'.tr,
                                                  color: AppColors.commonColor,
                                                  onTap: () {
                                                    Get.back();
                                                    Get.bottomSheet(
                                                      Container(
                                                        height:
                                                            Get.height * .40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: AppColors
                                                              .primaryColor,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    30),
                                                            topRight:
                                                                Radius.circular(
                                                                    30),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(
                                                                  25, 7, 25, 0),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                height: 4,
                                                                width: 69,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: AppColors
                                                                      .commonColor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 25),
                                                              AppText(
                                                                title:
                                                                    'SetDelivery'
                                                                        .tr,
                                                                size: 16,
                                                              ),
                                                              SizedBox(
                                                                  height: 25),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  AppText(
                                                                    title:
                                                                        'Howmanydays'
                                                                            .tr,
                                                                    size: 12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          16),
                                                                  appField(
                                                                    context:
                                                                        context,
                                                                    hint:
                                                                        'writeDays'
                                                                            .tr,
                                                                    fillColor:
                                                                        AppColors
                                                                            .F9grey,
                                                                    hintSize:
                                                                        13,
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          15),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          AppText(
                                                                            title:
                                                                                'date'.tr,
                                                                            size:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                          SizedBox(
                                                                              height: 14.5),
                                                                          Container(
                                                                            width:
                                                                                155,
                                                                            child:
                                                                                appField(
                                                                              context: context,
                                                                              hint: 'writeDate'.tr,
                                                                              fillColor: AppColors.F9grey,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              10),
                                                                      Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          AppText(
                                                                            title:
                                                                                'time'.tr,
                                                                            size:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                14.5,
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                155,
                                                                            child:
                                                                                appField(
                                                                              context: context,
                                                                              hint: 'writeTime'.tr,
                                                                              fillColor: AppColors.F9grey,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          25),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            DoubleAppButton(
                                                                          buttonName:
                                                                              'Cancel'.tr,
                                                                          color:
                                                                              AppColors.F9grey,
                                                                          textColor:
                                                                              AppColors.C9Color,
                                                                          onTap:
                                                                              () {},
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              15),
                                                                      Expanded(
                                                                        child:
                                                                            DoubleAppButton(
                                                                          buttonName:
                                                                              'Done'.tr,
                                                                          color:
                                                                              AppColors.commonColor,
                                                                          onTap:
                                                                              () {
                                                                            Get.back();
                                                                            Get.dialog(
                                                                              Column(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: AppColors.primaryColor,
                                                                                        borderRadius: BorderRadius.circular(10),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsets.fromLTRB(25, 15, 25, 25),
                                                                                        child: Column(
                                                                                          children: [
                                                                                            Container(
                                                                                              height: 83,
                                                                                              width: 83,
                                                                                              child: Lottie.asset(ImageConst.Done),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 13,
                                                                                            ),
                                                                                            AppText(
                                                                                              title: 'autoDeliverySuccessful'.tr,
                                                                                              size: 14,
                                                                                              fontWeight: FontWeight.w600,
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 15,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.symmetric(horizontal: 11.0),
                                                                                              child: AppText(
                                                                                                title: 'youSetThisDelivery'.tr,
                                                                                                textAlign: TextAlign.center,
                                                                                                size: 14,
                                                                                                fontWeight: FontWeight.w400,
                                                                                                color: AppColors.DescriptionColor,
                                                                                              ),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 25,
                                                                                            ),
                                                                                            AppButton(
                                                                                              buttonName: 'Done'.tr,
                                                                                              color: AppColors.commonColor,
                                                                                              onTap: () {
                                                                                                Get.back();
                                                                                                Get.bottomSheet(
                                                                                                  Container(
                                                                                                    height: 335,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: AppColors.primaryColor,
                                                                                                      borderRadius: BorderRadius.only(
                                                                                                        topLeft: Radius.circular(30),
                                                                                                        topRight: Radius.circular(30),
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsets.fromLTRB(25, 7, 25, 15),
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
                                                                                                            title: 'selectPaymentMethod'.tr,
                                                                                                            size: 16,
                                                                                                          ),
                                                                                                          SizedBox(height: 30),
                                                                                                          Column(
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: AppColors.F9grey,
                                                                                                                  borderRadius: BorderRadius.circular(8),
                                                                                                                ),
                                                                                                                child: Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
                                                                                                                  child: Row(
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Image.asset(ImageConst.stripe),
                                                                                                                      Container(
                                                                                                                        height: 26,
                                                                                                                        width: 26,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: AppColors.commonColor,
                                                                                                                          borderRadius: BorderRadius.circular(36),
                                                                                                                        ),
                                                                                                                        child: Center(
                                                                                                                          child: Icon(
                                                                                                                            Icons.done,
                                                                                                                            color: AppColors.primaryColor,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              SizedBox(height: 20),
                                                                                                              Container(
                                                                                                                height: 57,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: AppColors.F9grey,
                                                                                                                  borderRadius: BorderRadius.circular(8),
                                                                                                                ),
                                                                                                                child: Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                                                                                                  child: Row(
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      AppText(
                                                                                                                        title: 'cashDelivery'.tr,
                                                                                                                        size: 13,
                                                                                                                        fontWeight: FontWeight.w500,
                                                                                                                      ),
                                                                                                                      Container(
                                                                                                                        height: 26,
                                                                                                                        width: 26,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: AppColors.primaryColor,
                                                                                                                          borderRadius: BorderRadius.circular(36),
                                                                                                                        ),
                                                                                                                        child: Center(
                                                                                                                          child: Icon(
                                                                                                                            Icons.done,
                                                                                                                            color: AppColors.commonColor,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              SizedBox(height: 26),
                                                                                                              Row(
                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                children: [
                                                                                                                  DoubleAppButton(
                                                                                                                    buttonName: 'Cancel'.tr,
                                                                                                                    color: AppColors.F9grey,
                                                                                                                    buttonHeight: 49,
                                                                                                                    buttonWidth: 155,
                                                                                                                    textColor: AppColors.C9Color,
                                                                                                                    onTap: () {
                                                                                                                      Get.back();
                                                                                                                    },
                                                                                                                  ),
                                                                                                                  SizedBox(width: 10),
                                                                                                                  DoubleAppButton(
                                                                                                                    buttonName: 'Done'.tr,
                                                                                                                    buttonHeight: 49,
                                                                                                                    buttonWidth: 155,
                                                                                                                    color: AppColors.commonColor,
                                                                                                                    onTap: () {
                                                                                                                      Get.back();
                                                                                                                      Get.dialog(
                                                                                                                        Column(
                                                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                          children: [
                                                                                                                            Padding(
                                                                                                                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                                                                                                              child: Container(
                                                                                                                                width: double.infinity,
                                                                                                                                decoration: BoxDecoration(
                                                                                                                                  color: AppColors.primaryColor,
                                                                                                                                  borderRadius: BorderRadius.circular(10),
                                                                                                                                ),
                                                                                                                                child: Padding(
                                                                                                                                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 25),
                                                                                                                                  child: Column(
                                                                                                                                    children: [
                                                                                                                                      Container(
                                                                                                                                        height: 83,
                                                                                                                                        width: 83,
                                                                                                                                        child: Lottie.asset(ImageConst.Done),
                                                                                                                                      ),
                                                                                                                                      SizedBox(
                                                                                                                                        height: 13,
                                                                                                                                      ),
                                                                                                                                      AppText(
                                                                                                                                        title: 'Paymentsuccessful'.tr,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                        size: 15,
                                                                                                                                        color: AppColors.blackColor,
                                                                                                                                      ),
                                                                                                                                      SizedBox(
                                                                                                                                        height: 15,
                                                                                                                                      ),
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsets.symmetric(horizontal: 11.0),
                                                                                                                                        child: AppText(
                                                                                                                                          title: 'YourAmountDeducted'.tr,
                                                                                                                                          textAlign: TextAlign.center,
                                                                                                                                          size: 14,
                                                                                                                                          fontWeight: FontWeight.w400,
                                                                                                                                          color: AppColors.DescriptionColor,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      SizedBox(
                                                                                                                                        height: 25,
                                                                                                                                      ),
                                                                                                                                      AppButton(
                                                                                                                                        buttonName: 'Done'.tr,
                                                                                                                                        color: AppColors.commonColor,
                                                                                                                                        onTap: () {
                                                                                                                                          Get.toNamed(Routes.orderDetailRoute);
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
                                                                                                                ],
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
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                        : () {
                            Get.toNamed(Routes.chooseschedulecartRoute);
                          },
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

Widget CartDetail() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(9),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              ImageConst.wishList,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      title: 'OatmealMashroomRice'.tr,
                      fontWeight: FontWeight.w500,
                      size: 13,
                    ),
                    SvgPicture.asset(
                      ImageConst.cross,
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(height: 2),
                AppText(
                  title: 'thaiFood'.tr,
                  size: 11,
                  color: AppColors.DescriptionColor,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(219, 219, 219, 1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(width: 11),
                        AppText(
                          title: 'One'.tr,
                          size: 18,
                        ),
                        SizedBox(width: 11),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(219, 219, 219, 1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            Icons.add,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    AppText(
                      title: r'Twentyfive$'.tr,
                      fontWeight: FontWeight.w600,
                      color: AppColors.commonColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
