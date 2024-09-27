// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:candian_cart/app/home/home_controller.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:candian_cart/utils/bottom_navigation/bottom_navigation.dart';
import 'package:candian_cart/utils/drawer/app_drawer.dart';

List<Map<String, String>> items = [
  {'text': 'offers'.tr, 'animation': ImageConst.homeAnimation1},
  {'text': 'gifts'.tr, 'animation': ImageConst.homeAnimation2},
  {'text': 'coupons'.tr, 'animation': ImageConst.homeAnimation3},
  {'text': 'promotions'.tr, 'animation': ImageConst.homeAnimation4},
];

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        surfaceTintColor: AppColors.greyLight,
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Home'.tr,
          imageSuffix2: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.notificationRoute);
              },
              child: SvgPicture.asset(ImageConst.notification)),
          imageSuffix: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.walletScreenRoute);
              },
              child: SvgPicture.asset(ImageConst.wallet)),
          leadingWidget: GestureDetector(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Container(
                height: 22,
                width: 22,
                color: AppColors.transperentColor,
                child: SvgPicture.asset(ImageConst.iconMenu)),
          ),
        ),
        backgroundColor: AppColors.greyLight,
      ),
      backgroundColor: AppColors.greyLight,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(25, 20, 25, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'hiLorem'.tr,
                size: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.commonColor,
              ),
              SizedBox(height: 5),
              AppText(
                title: 'shopToday'.tr,
                size: 13,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 25),
              CarouselSlider(
                options: CarouselOptions(
                  height: 134,
                  autoPlay: true,
                ),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Image.asset(
                                    ImageConst.homeImage1,
                                    width: 400,
                                    height: 134,
                                    fit: BoxFit.cover,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: AppText(
                                          title: 'sliderText'.tr,
                                          size: 13,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.primaryColor,
                                          height: 1.8,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 15),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 6,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            Container(
                                              height: 4,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                color: AppColors.greyLight,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ).marginSymmetric(horizontal: 7),
                                            Container(
                                              height: 4,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                color: AppColors.greyLight,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 25),
              Container(
                height: 103,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            homeController.updateIndexValue(index);
                            log(index.toString());
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              clipBehavior: Clip.none,
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Lottie.asset(items[index]['animation']!),
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(items[index]['text'.tr]!),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Obx(() {
                return Column(
                  children: [
                    if (homeController.indexValue.value == 0) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'restaurants'.tr,
                            fontWeight: FontWeight.w500,
                            size: 15,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.allResturantsRoute);
                            },
                            child: AppText(
                              title: 'seeAll'.tr,
                              size: 13,
                              fontWeight: FontWeight.w500,
                              color: AppColors.commonColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.restaurantDetailsRoute);
                              },
                              child: ResturantWidget(),
                            ),
                            SizedBox(width: 20),
                            ResturantWidget(),
                            SizedBox(width: 20),
                            ResturantWidget(),
                            SizedBox(width: 20),
                            ResturantWidget(),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'grocery'.tr,
                            fontWeight: FontWeight.w500,
                            size: 15,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.allResturantsRoute);
                            },
                            child: AppText(
                              title: 'seeAll'.tr,
                              size: 13,
                              fontWeight: FontWeight.w500,
                              color: AppColors.commonColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.restaurantDetailsRoute);
                              },
                              child: ResturantWidget(),
                            ),
                            SizedBox(width: 20),
                            ResturantWidget(),
                            SizedBox(width: 20),
                            ResturantWidget(),
                            SizedBox(width: 20),
                            ResturantWidget(),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'furniture'.tr,
                            fontWeight: FontWeight.w500,
                            size: 15,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.allResturantsRoute);
                            },
                            child: AppText(
                              title: 'seeAll'.tr,
                              size: 13,
                              fontWeight: FontWeight.w500,
                              color: AppColors.commonColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.restaurantDetailsRoute);
                              },
                              child: ResturantWidget(),
                            ),
                            SizedBox(width: 20),
                            ResturantWidget(),
                            SizedBox(width: 20),
                            ResturantWidget(),
                            SizedBox(width: 20),
                            ResturantWidget(),
                          ],
                        ),
                      ),
                    ] else if (homeController.indexValue.value == 1) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'toys'.tr,
                            fontWeight: FontWeight.w500,
                            size: 16,
                          ),
                          AppText(
                            title: 'seeAll'.tr,
                            fontWeight: FontWeight.w500,
                            size: 12,
                            color: AppColors.commonColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GiftsToys(
                              'teddyBear'.tr,
                              Image.asset(ImageConst.Teddy),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: GiftsToys(
                              'hotwheel'.tr,
                              Image.asset(ImageConst.HotWheel),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'gifts'.tr,
                            fontWeight: FontWeight.w500,
                            size: 16,
                          ),
                          AppText(
                            title: 'seeAll'.tr,
                            fontWeight: FontWeight.w500,
                            size: 12,
                            color: AppColors.commonColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GiftsToys(
                              'goldenGift'.tr,
                              Image.asset(ImageConst.Gifttbox),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: GiftsToys(
                              'redGifts'.tr,
                              Image.asset(ImageConst.Gifttbox),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'mugs'.tr,
                            fontWeight: FontWeight.w500,
                            size: 16,
                          ),
                          AppText(
                            title: 'seeAll'.tr,
                            fontWeight: FontWeight.w500,
                            size: 12,
                            color: AppColors.commonColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GiftsToys(
                              'mugs'.tr,
                              Image.asset(ImageConst.Mug),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: GiftsToys(
                              'mugs'.tr,
                              Image.asset(ImageConst.Mug),
                            ),
                          ),
                        ],
                      ),
                    ] else if (homeController.indexValue.value == 2) ...[
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: 'restaurantsCoupons'.tr,
                                fontWeight: FontWeight.w500,
                                size: 16,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.couponsRoute);
                                },
                                child: AppText(
                                  title: 'seeAll'.tr,
                                  fontWeight: FontWeight.w500,
                                  size: 12,
                                  color: AppColors.commonColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          coupons(
                            color: AppColors.primaryColor,
                            flatColor: AppColors.blackColor,
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: 'groceryCoupons'.tr,
                                fontWeight: FontWeight.w500,
                                size: 16,
                              ),
                              AppText(
                                title: 'seeAll'.tr,
                                fontWeight: FontWeight.w500,
                                size: 12,
                                color: AppColors.commonColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          coupons(
                            color: AppColors.blackColor,
                            textColor: AppColors.primaryColor,
                            flatColor: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    ]
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget coupons({Color? color, Color? textColor, Color? flatColor}) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.07),
            offset: Offset(0, 3),
            blurRadius: 19,
          ),
        ],
        color: color,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 20),
              child: Stack(
                alignment: Alignment.topRight,
                clipBehavior: Clip.none,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: 'Percnt10'.tr,
                            fontWeight: FontWeight.w600,
                            size: 22,
                            color: textColor ?? AppColors.commonColor,
                          ),
                          AppText(
                            title: 'Off'.tr,
                            fontWeight: FontWeight.w500,
                            size: 17,
                            color: textColor ?? AppColors.commonColor,
                          ),
                        ],
                      ),
                      SizedBox(width: 0),
                      AppText(
                        title: 'Zaika'.tr,
                        size: 20,
                        color: textColor ?? AppColors.commonColor,
                      ),
                    ],
                  ),
                  Positioned(
                    top: -20,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.restaurantDetailsRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(9),
                            bottomLeft: Radius.circular(9),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 18, bottom: 18, left: 13, right: 13),
                          child: AppText(
                            title: 'ShopNOW'.tr,
                            color: AppColors.primaryColor,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    color: AppColors.Greylight2,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: flatColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      63,
                      12,
                      63,
                      12,
                    ),
                    child: AppText(
                      title: 'CodeFlat'.tr,
                      color: color ?? AppColors.primaryColor,
                      size: 18.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                    ),
                    color: AppColors.Greylight2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Image.asset(
              ImageConst.Barcode,
              height: 50,
              width: 120,
            ),
          ],
        ),
      ),
    );
  }
}

Widget ResturantWidget() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: AppColors.primaryColor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 37,
          width: 37,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            color: AppColors.commonColor,
          ),
          child: Center(
            child: AppText(
              title: '%25',
              size: 11,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(11, 10, 11, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImageConst.homeImage2,
                height: 105,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              AppText(
                title: 'Sedutperspiciatis'.tr,
                size: 12.5,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 3),
              AppText(
                title: 'Resturants'.tr,
                size: 11,
                color: Color(0xff8B8B8B),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffE8D100),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffE8D100),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffE8D100),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffE8D100),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(217, 217, 217, 1),
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget GiftsToys(String text, Widget? toyImage) {
  return Stack(
    alignment: Alignment.topRight,
    children: [
      Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 8, 12, 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(19, 23, 19, 17),
                child: Container(
                  height: 117,
                  width: 117,
                  child: toyImage,
                ),
              ),

              // SizedBox(height: 5),
              AppText(
                title: text,
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
                  AppText(
                    title: r'Twentyfive$'.tr,
                    color: AppColors.commonColor,
                    size: 12,
                  ),
                  SvgPicture.asset(ImageConst.bookmark),
                ],
              ),
            ],
          ),
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
  );
}
