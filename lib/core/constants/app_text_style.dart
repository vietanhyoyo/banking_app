import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText {
  ///Title
  static TextStyle titlePrimaryLG = TextStyle(
      fontSize: AppDimens.d24.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.primary);
  static TextStyle titleLG = TextStyle(
    fontSize: AppDimens.d22.sp,
    fontWeight: FontWeight.w400,
    height: 28 / AppDimens.d22,
  );
  static TextStyle titleMD =
      TextStyle(fontSize: AppDimens.d16.sp, fontWeight: FontWeight.w600);
  static TextStyle titleSM =
      TextStyle(fontSize: AppDimens.d16.sp, fontWeight: FontWeight.w400);

  ///Label
  static TextStyle labelLG = TextStyle(
    fontSize: AppDimens.d14.sp,
    fontWeight: FontWeight.w600,
    height: 20 / AppDimens.d14,
  );
  static TextStyle labelSM = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    height: 16 / 11.sp,
  );
  static TextStyle labelPrimaryLG = TextStyle(
      fontSize: AppDimens.d14.sp,
      fontWeight: FontWeight.w600,
      height: 20 / AppDimens.d14,
      color: AppColors.primary);
  static TextStyle labelFourthSM = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeight.w600,
      height: 16 / 11.sp,
      color: AppColors.fourth);

  ///Body
  static TextStyle bodyMD = TextStyle(
    fontSize: AppDimens.d14.sp,
    fontWeight: FontWeight.w400,
    height: 24 / AppDimens.d14,
  );
  static TextStyle bodySM = TextStyle(
    fontSize: AppDimens.d12.sp,
    fontWeight: FontWeight.w400,
    height: 20 / AppDimens.d14,
  );
}

TextTheme textTheme = TextTheme(
  displayLarge: TextStyle(
      color: AppColors.white,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      height: 32 / 24,
      fontFamily: AppFonts.roboto),
  displayMedium: TextStyle(
      color: AppColors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      height: 28 / 20,
      fontFamily: AppFonts.roboto),
  displaySmall: TextStyle(
      color: AppColors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      height: 24 / 16,
      fontFamily: AppFonts.roboto),
  headlineMedium: TextStyle(
      color: AppColors.white,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      height: 22 / 14,
      fontFamily: AppFonts.roboto),
  titleLarge: TextStyle(
      color: AppColors.white,
      fontFamily: AppFonts.roboto,
      fontSize: 20.sp,
      fontWeight: FontWeight.w300,
      height: 26 / 20),
  titleMedium: TextStyle(
      color: AppColors.white,
      fontFamily: AppFonts.roboto,
      fontSize: 16.sp,
      fontWeight: FontWeight.w300,
      height: 24 / 16),
  titleSmall: TextStyle(
      color: AppColors.white,
      fontFamily: AppFonts.roboto,
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      height: 22 / 14),
  bodyLarge: TextStyle(
      color: AppColors.white,
      fontFamily: AppFonts.roboto,
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      height: 22 / 14),
  bodyMedium: TextStyle(
      color: AppColors.white,
      fontFamily: AppFonts.roboto,
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      height: 22 / 14),
  bodySmall: TextStyle(
      color: AppColors.white,
      fontFamily: AppFonts.roboto,
      fontSize: 13.sp,
      fontWeight: FontWeight.w300,
      height: 20 / 13),
).apply();

TextTheme textLightTheme = TextTheme(
  displayLarge: TextStyle(
      color: AppColors.black,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      height: 32 / 24,
      fontFamily: AppFonts.roboto),
  displayMedium: TextStyle(
      color: AppColors.black,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      height: 28 / 20,
      fontFamily: AppFonts.roboto),
  displaySmall: TextStyle(
      color: AppColors.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      height: 24 / 16,
      fontFamily: AppFonts.roboto),
  headlineMedium: TextStyle(
      color: AppColors.black,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      height: 22 / 14,
      fontFamily: AppFonts.roboto),
  titleLarge: TextStyle(
      color: AppColors.black,
      fontFamily: AppFonts.roboto,
      fontSize: 20.sp,
      fontWeight: FontWeight.w300,
      height: 26 / 20),
  titleMedium: TextStyle(
      color: AppColors.black,
      fontFamily: AppFonts.roboto,
      fontSize: 16.sp,
      fontWeight: FontWeight.w300,
      height: 24 / 16),
  titleSmall: TextStyle(
      color: AppColors.black,
      fontFamily: AppFonts.roboto,
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      height: 22 / 14),
  bodyLarge: TextStyle(
      color: AppColors.black,
      fontFamily: AppFonts.roboto,
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      height: 22 / 14),
  bodyMedium: TextStyle(
      color: AppColors.black,
      fontFamily: AppFonts.roboto,
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      height: 22 / 14),
  bodySmall: TextStyle(
      color: AppColors.black,
      fontFamily: AppFonts.roboto,
      fontSize: 13.sp,
      fontWeight: FontWeight.w300,
      height: 20 / 13),
).apply();
