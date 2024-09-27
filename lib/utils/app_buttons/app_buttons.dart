// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:candian_cart/utils/app_text/app_text.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  final String buttonName;
  final double textSize;
  final double buttonWidth;
  final double buttonHeight;
  final Color? buttonColor;
  final Color? color;
  final Color textColor;
  final Color iconColor;
  final FontWeight? fontWeight;
  final BorderRadius? buttonRadius;
  final IconData icon;
  final String iconImage;
  final String loadingText;
  final bool isIcon;
  final bool isCenter;
  final bool loading;
  final double iconSize;
  final double paddingBtwn;
  final VoidCallback onTap;
  final double borderWidth;
  final Color borderColor;
  bool? isShowGradiant;

  AppButton({
    Key? key,
    this.isShowGradiant = true,
    required this.buttonName,
    this.buttonWidth = double.infinity,
    this.buttonHeight = 57,
    this.buttonColor,
    this.color,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.buttonRadius,
    this.iconColor = Colors.white,
    this.icon = Icons.home,
    this.iconImage = "",
    this.loadingText = "Please wait...",
    this.isIcon = false,
    this.isCenter = false,
    this.loading = false,
    this.iconSize = 30,
    this.paddingBtwn = 0,
    required this.onTap,
    this.textSize = 16,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loading ? () {} : onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: buttonRadius ?? BorderRadius.circular(10),
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
        ),
        child: loading
            ? Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoActivityIndicator(
                      color: textColor,
                      radius: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    AppText(
                      title: loadingText,
                      color: textColor,
                      size: textSize,
                    )
                  ],
                ),
              )
            : Padding(
                padding: isCenter
                    ? const EdgeInsets.symmetric(horizontal: 20)
                    : EdgeInsets.only(left: paddingBtwn == 0 ? 0 : 15),
                child: Row(
                  mainAxisAlignment: paddingBtwn == 0
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    isIcon
                        ? iconImage == ""
                            ? Icon(
                                icon,
                                color: iconColor,
                                size: iconSize,
                              )
                            : Image.asset(
                                iconImage,
                                height: iconSize,
                              )
                        : Container(),
                    isCenter
                        ? Spacer()
                        : SizedBox(
                            width: paddingBtwn == 0
                                ? isIcon
                                    ? 10
                                    : 0
                                : paddingBtwn,
                          ),
                    Center(
                      child: AppText(
                        title: buttonName,
                        color: textColor,
                        fontWeight: fontWeight ?? FontWeight.w700,
                        size: textSize,
                      ),
                    ),
                    isCenter ? const Spacer() : Container(),
                    isCenter
                        ? isIcon
                            ? iconImage == ""
                                ? Icon(
                                    icon,
                                    color: iconColor,
                                    size: iconSize,
                                  )
                                : Image.asset(iconImage,
                                    height: iconSize, color: Colors.transparent)
                            : Container()
                        : Container(),
                  ],
                ),
              ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DoubleAppButton extends StatelessWidget {
  final String buttonName;
  final double textSize;
  final double buttonWidth;
  final double buttonHeight;
  final Color? buttonColor;
  final Color? color;
  final Color textColor;
  final Color iconColor;
  final FontWeight? fontWeight;
  final BorderRadius? buttonRadius;
  final IconData icon;
  final String iconImage;
  final String loadingText;
  final bool isIcon;
  final bool isCenter;
  final bool loading;
  final double iconSize;
  final double paddingBtwn;
  final VoidCallback onTap;
  final double borderWidth;
  final Color borderColor;
  bool? isShowGradiant;

  DoubleAppButton({
    Key? key,
    this.isShowGradiant = true,
    required this.buttonName,
    this.buttonWidth = 150,
    this.buttonHeight = 49,
    this.buttonColor,
    this.color,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.buttonRadius,
    this.iconColor = Colors.white,
    this.icon = Icons.home,
    this.iconImage = "",
    this.loadingText = "Please wait...",
    this.isIcon = false,
    this.isCenter = false,
    this.loading = false,
    this.iconSize = 30,
    this.paddingBtwn = 0,
    required this.onTap,
    this.textSize = 16,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loading ? () {} : onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: buttonRadius ?? BorderRadius.circular(10),
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
        ),
        child: loading
            ? Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoActivityIndicator(
                      color: textColor,
                      radius: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    AppText(
                      title: loadingText,
                      color: textColor,
                      size: textSize,
                    )
                  ],
                ),
              )
            : Padding(
                padding: isCenter
                    ? const EdgeInsets.symmetric(horizontal: 20)
                    : EdgeInsets.only(left: paddingBtwn == 0 ? 0 : 15),
                child: Row(
                  mainAxisAlignment: paddingBtwn == 0
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    isIcon
                        ? iconImage == ""
                            ? Icon(
                                icon,
                                color: iconColor,
                                size: iconSize,
                              )
                            : Image.asset(
                                iconImage,
                                height: iconSize,
                              )
                        : Container(),
                    isCenter
                        ? Spacer()
                        : SizedBox(
                            width: paddingBtwn == 0
                                ? isIcon
                                    ? 10
                                    : 0
                                : paddingBtwn,
                          ),
                    Center(
                      child: AppText(
                        title: buttonName,
                        color: textColor,
                        fontWeight: fontWeight ?? FontWeight.w700,
                        size: textSize,
                      ),
                    ),
                    isCenter ? const Spacer() : Container(),
                    isCenter
                        ? isIcon
                            ? iconImage == ""
                                ? Icon(
                                    icon,
                                    color: iconColor,
                                    size: iconSize,
                                  )
                                : Image.asset(iconImage,
                                    height: iconSize, color: Colors.transparent)
                            : Container()
                        : Container(),
                  ],
                ),
              ),
      ),
    );
  }
}
