// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

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
          minimum: EdgeInsets.fromLTRB(25, 25, 25, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: 'restaurantReview'.tr,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: Image.asset(
                  ImageConst.homeImage1,
                  width: 365,
                  height: 147,
                  fit: BoxFit.cover,
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
                        color: Color(0xffE8D100),
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffE8D100),
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffE8D100),
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffE8D100),
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(217, 217, 217, 1),
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '4.5',
                        style: TextStyle(
                          color: Color.fromRGBO(170, 171, 183, 1),
                        ),
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
              SizedBox(height: 25),
              CustomerReviews(),
              SizedBox(height: 25),
              CustomerReviews(),
              SizedBox(height: 25),
              CustomerReviews(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomerReviews() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 49,
              width: 50,
              child: Image.asset(ImageConst.signup),
            ),
            SizedBox(width: 10),
            Expanded(
              child: AppText(
                title: 'loremIpsum'.tr,
                size: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            AppText(
              title: 'helpFul'.tr,
              size: 11,
              color: AppColors.commonColor,
            ),
            SizedBox(width: 5),
            Image.asset(ImageConst.like),
            SizedBox(width: 10),
            Image.asset(ImageConst.disLike),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 350,
          child: AppText(
            title: 'custReview'.tr,
            size: 13,
            color: Color(0xff747474),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
