// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:candian_cart/routes/app_pages.dart';
import 'package:candian_cart/utils/app_bars/main_appbar.dart';
import 'package:candian_cart/utils/app_colors/app_color.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

class CateringReviews extends StatelessWidget {
  const CateringReviews({super.key});

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
                title: 'ABCateringdetails'.tr,
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
                        Get.toNamed(Routes.cateringReviewRoute);
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
                  Row(
                    children: [
                      AppText(
                        title: 'ABCaterings'.tr,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.bookmark_border,
                        color: AppColors.commonColor,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      AppText(
                        title: 'K4'.tr,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
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
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Type'.tr,
                          style: TextStyle(
                            fontFamily: 'main',
                            color: AppColors.DescriptionColor,
                            fontWeight: FontWeight.w300,
                          ),
                          children: [
                            TextSpan(text: '  '),
                            TextSpan(
                              text: 'CateringService'.tr,
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
                            fontWeight: FontWeight.w300,
                            color: AppColors.DescriptionColor,
                          ),
                          children: [
                            TextSpan(text: '  '),
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
                            color: AppColors.DescriptionColor,
                            fontWeight: FontWeight.w300,
                          ),
                          children: [
                            TextSpan(text: '  '),
                            TextSpan(
                              text: 'Seven80'.tr,
                              style: TextStyle(
                                  fontFamily: 'main',
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          text: 'TotalStaff'.tr,
                          style: TextStyle(
                            fontFamily: 'main',
                            fontWeight: FontWeight.w300,
                            color: AppColors.DescriptionColor,
                          ),
                          children: [
                            TextSpan(text: '  '),
                            TextSpan(
                              text: 'twentyseven'.tr,
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
                          text: 'ContactNumber'.tr,
                          style: TextStyle(
                            fontFamily: 'main',
                            fontWeight: FontWeight.w300,
                            color: AppColors.DescriptionColor,
                          ),
                          children: [
                            TextSpan(text: '  '),
                            TextSpan(
                              text: 'Call92315'.tr,
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
                          text: 'Website'.tr,
                          style: TextStyle(
                            fontFamily: 'main',
                            fontWeight: FontWeight.w300,
                            color: AppColors.DescriptionColor,
                          ),
                          children: [
                            TextSpan(text: '  '),
                            TextSpan(
                              text: 'wwwabcatering'.tr,
                              style: TextStyle(
                                fontFamily: 'main',
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              blurRadius: 13,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.file_download_outlined,
                            color: AppColors.commonColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      AppText(
                        title: 'DownloadMenu'.tr,
                        height: 1,
                        textAlign: TextAlign.center,
                        color: AppColors.grey,
                        fontFamily: 'main',
                        size: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
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