import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  AppText(
      {Key? key,
      this.title = "Business App",
      this.color = Colors.black,
      this.decoration = TextDecoration.none,
      this.size,
      this.fontWeight,
      this.fontFamily,
      this.textAlign,
      this.height,
      this.letterSpacing,
      this.maxLines,
      this.overFlow,
      this.fontStyle})
      : super(key: key);
  final Color color;
  final TextOverflow? overFlow;
  final String title;
  final double? size;
  final double? height;
  final FontWeight? fontWeight;
  final TextDecoration decoration;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          color: color,
          fontSize: size,
          height: height ?? 0,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          decoration: decoration,
          decorationColor: color,
          letterSpacing: letterSpacing,
        ),
      ),
      overflow: overFlow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
