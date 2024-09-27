// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_buttons/app_buttons.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/app_text_field.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/routes/app_pages.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Home'.tr,
          imageSuffix: SvgPicture.asset(ImageConst.wallet),
          imageSuffix2: SvgPicture.asset(ImageConst.notification),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 25, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'restaurantDetail'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(
                      ImageConst.homeImage1,
                      width: 365,
                      height: 147,
                      fit: BoxFit.cover,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.reviewsScreenRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(11),
                            bottomRight: Radius.circular(11),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                          child: AppText(
                            title: 'reviews'.tr,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                            size: 13.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    title: 'Sed ut perspiciatis unde omnis'.tr,
                    size: 13,
                    fontWeight: FontWeight.w500,
                  ),
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
                  )
                ],
              ),
              SizedBox(height: 22),
              Text.rich(
                TextSpan(
                  text: 'Type'.tr,
                  style: TextStyle(
                    fontFamily: 'main',
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(text: '  '),
                    TextSpan(
                      text: 'Restaurant'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: 'Timing'.tr,
                  style: TextStyle(
                    fontFamily: 'main',
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(text: '  '),
                    TextSpan(
                      text: 'E11AM11PM'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: 'TotalCustomer'.tr,
                  style: TextStyle(
                    fontFamily: 'main',
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: '   786'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22),
              AppText(
                title: 'venue'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              Container(
                height: 110,
                width: double.infinity,
                color: AppColors.primaryColor,
                child: Center(child: Text('Google Map Here')),
              ),
              SizedBox(height: 25),
              AppText(
                title: 'menuDetail'.tr,
                size: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
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
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 4),
                          child: appField(
                            context: context,
                            hint: 'searchItem'.tr,
                            hintSize: 13,
                            isPrefix: true,
                            prefixWidget:
                                Icon(Icons.search, color: AppColors.grey),
                            height: 17,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(183, 183, 183, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                          child: Row(
                            children: [
                              AppText(
                                title: 'popular'.tr,
                                color: AppColors.primaryColor,
                              ),
                              Icon(
                                Icons.arrow_drop_down_rounded,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.commonColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: AppText(
                        size: 13,
                        title: 'all'.tr,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: AppText(
                        size: 13,
                        title: 'dishes'.tr,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: AppText(
                        size: 13,
                        title: 'drinks'.tr,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: AppText(
                        size: 13,
                        title: 'deserts'.tr,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: AppText(
                        size: 13,
                        title: 'Lorem'.tr,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  RestaurantItems(context),
                  SizedBox(height: 20),
                  RestaurantItems(context),
                  SizedBox(height: 50),
                  AppButton(
                    buttonName: 'addToCart'.tr,
                    color: AppColors.commonColor,
                    onTap: () {
                      Get.toNamed(Routes.addToCartRoute);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row RestaurantItems(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 8, 12, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.foodDetailRoute);
                        },
                        child: Image.asset(
                          ImageConst.mask1,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Icon(
                            Icons.check,
                            size: 15,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  AppText(
                    title: 'riceDish'.tr,
                    size: 11,
                  ),
                  SizedBox(height: 2),
                  AppText(
                    title: 'thaiFood'.tr,
                    size: 10,
                    color: AppColors.blackColor.withOpacity(.4),
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$16.00',
                        style: TextStyle(
                          color: AppColors.commonColor,
                        ),
                      ),
                      SvgPicture.asset(ImageConst.bookmark),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset(
                        ImageConst.mask2,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Icon(
                            Icons.check,
                            size: 15,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  AppText(
                    title: 'riceDish'.tr,
                    size: 11,
                  ),
                  SizedBox(height: 2),
                  AppText(
                    title: 'thaiFood'.tr,
                    size: 10,
                    color: AppColors.blackColor.withOpacity(.4),
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$16.00',
                        style: TextStyle(
                          color: AppColors.commonColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            Container(
                              height: 330,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 8, 25, 25),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 69,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: AppColors.commonColor,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                    ),
                                    SizedBox(height: 25),
                                    AppText(
                                      title: 'myWishlist'.tr,
                                      size: 15,
                                    ),
                                    SizedBox(height: 25),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.greyLight,
                                      ),
                                      child: Row(
                                        children: [
                                          Image.asset(ImageConst.wishList),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: AppText(
                                              title: 'foodWishlist'.tr,
                                              size: 12,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                child: Icon(
                                                  Icons.add,
                                                  color: AppColors.commonColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.greyLight,
                                      ),
                                      child: Row(
                                        children: [
                                          Image.asset(ImageConst.wishList),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: AppText(
                                              title: 'foodWishlist'.tr,
                                              size: 12,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                child: Icon(
                                                  Icons.add,
                                                  color: AppColors.commonColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 27),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: DoubleAppButton(
                                            buttonName: 'createNew'.tr,
                                            onTap: () {
                                              Get.back();
                                              Get.bottomSheet(
                                                Container(
                                                  height: 380,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(30),
                                                      topRight:
                                                          Radius.circular(30),
                                                    ),
                                                    color:
                                                        AppColors.primaryColor,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            25, 8, 25, 25),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 69,
                                                            height: 4,
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
                                                            height: 25,
                                                          ),
                                                          AppText(
                                                            title:
                                                                'createWishlist'
                                                                    .tr,
                                                            size: 15,
                                                          ),
                                                          SizedBox(height: 25),
                                                          appField(
                                                            context: context,
                                                            hint: 'wishlist'.tr,
                                                            fillColor: AppColors
                                                                .greyLight,
                                                            hintSize: 13,
                                                            height: 18,
                                                          ),
                                                          SizedBox(height: 20),
                                                          Container(
                                                            height: 120,
                                                            width:
                                                                double.infinity,
                                                            decoration: BoxDecoration(
                                                                color: AppColors
                                                                    .greyLight,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8)),
                                                            child: Center(
                                                              child: Container(
                                                                height: 38,
                                                                width: 150,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              7),
                                                                  color: AppColors
                                                                      .commonColor,
                                                                ),
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              7),
                                                                    ),
                                                                    shadowColor:
                                                                        Colors
                                                                            .transparent,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                  ),
                                                                  child:
                                                                      AppText(
                                                                    title:
                                                                        'UploadImage'
                                                                            .tr,
                                                                    size: 12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: AppColors
                                                                        .primaryColor,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(height: 20),
                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    DoubleAppButton(
                                                                  buttonName:
                                                                      'Cancel'
                                                                          .tr,
                                                                  onTap: () {
                                                                    Get.back();
                                                                  },
                                                                  color: AppColors
                                                                      .greyLight,
                                                                  textColor:
                                                                      AppColors
                                                                          .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 15),
                                                              Expanded(
                                                                child:
                                                                    DoubleAppButton(
                                                                  buttonName:
                                                                      'Done'.tr,
                                                                  onTap: () {
                                                                    Get.back();
                                                                  },
                                                                  color: AppColors
                                                                      .commonColor,
                                                                  textColor:
                                                                      AppColors
                                                                          .primaryColor,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            color: AppColors.greyLight,
                                            textColor: AppColors.grey,
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Expanded(
                                          child: DoubleAppButton(
                                            buttonName: 'Done'.tr,
                                            onTap: () {
                                              Get.back();
                                            },
                                            color: AppColors.commonColor,
                                            textColor: AppColors.primaryColor,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: SvgPicture.asset(ImageConst.bookmark),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
