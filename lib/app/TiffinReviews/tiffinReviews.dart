// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class TiffinReviews extends StatelessWidget {
  const TiffinReviews({super.key});

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
              AppText(
                title: 'AbTiffinDetail'.tr,
                fontWeight: FontWeight.w500,
                size: 14,
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
                        Get.toNamed(Routes.tiffinReweisRoute);
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
                          padding: const EdgeInsets.fromLTRB(30, 14, 30, 14),
                          child: AppText(
                            title: 'Reviews'.tr,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                            size: 12,
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
                    title: 'ABTiffin'.tr,
                    fontWeight: FontWeight.w500,
                    size: 14,
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
                        color: AppColors.DescriptionColor,
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
                    color: AppColors.DescriptionColor,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: 'Tiffinservice'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
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
                    color: AppColors.DescriptionColor,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: 'E11AM11PM'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
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
                    color: AppColors.DescriptionColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'Seven80'.tr,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
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
            ],
          ),
        ),
      ),
    );
  }
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
