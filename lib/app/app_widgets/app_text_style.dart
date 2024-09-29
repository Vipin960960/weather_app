import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_strings.dart';

class AppTextStyle {
  /// Gives regular font of Lato of font size 16 & default weight is w400.
  static TextStyle regular({
    double fontSize = 16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: fontSize,
      color: color ?? AppColors.black,
      fontWeight: FontWeight.w400,
    );
  }

  /// Gives regular font of Lato of font size 25 & default weight is w600.
  static TextStyle bold({
    double fontSize = 25,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: fontSize,
      color: color ?? AppColors.black,
      fontWeight: FontWeight.w600,
    );
  }

  /// Gives customization option of Lato of font size 16
  /// & default weight is w400.
  static TextStyle custom({
    double fontSize = 16,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
    Color? decorationColor,
    TextOverflow? overflow,
  }) {
    return TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: fontSize,
      color: color ?? AppColors.black,
      fontWeight: fontWeight ?? FontWeight.w400,
      decoration: decoration,
      decorationColor: decorationColor,
    );
  }
}
