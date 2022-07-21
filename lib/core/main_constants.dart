import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


enum TextType {
  colorizeAnimationText,
  typerAnimatedText,
  scaleAnimatedText,
  normalText,
}

enum PageRouteTransition {
  normal,
  cupertinoPageRoute,
  slideTransition,
}

TextStyle getTextStyle({required BuildContext context, required double fontSize, required Color color,FontWeight? fontWeight}){
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    ),
  );
}

const primaryColor = Color(0xFF376ACD);
const secondaryColor = Color(0xFF64CCC9);

const grey = Color(0xffBDBDBD);
const black = Color(0xFF1F293D);
const white = Color(0xFFF7F9FD);