import 'package:banking_app/config/theme/custom_theme.dart';
import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';

final CustomTheme theme = CustomTheme(
    lightTheme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        scaffoldBackgroundColor: AppColors.white1,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.black,
          titleTextStyle: AppText.titleLG,
        ),
        primaryColor: AppColors.primary,
        primaryColorLight: AppColors.primary,
        primaryColorDark: AppColors.primary,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.white,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.black2,
        ),
        textTheme: textLightTheme,
        dialogTheme: const DialogTheme(
          titleTextStyle: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary, // Màu nền của button
            foregroundColor: AppColors.white, // Màu chữ/icon
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Góc bo tròn
            ),
            textStyle: AppText.titleMD,
            elevation: 0, // Độ cao (shadow)
            minimumSize: const Size.fromHeight(48),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Góc bo tròn
            ),
            textStyle: AppText.titleMD,
            elevation: 0, // Độ cao (shadow)
            minimumSize: const Size.fromHeight(48),
          ),
        ),
        bottomAppBarTheme:
            BottomAppBarTheme(color: Colors.transparent, elevation: 0, surfaceTintColor: Colors.transparent),
        bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.transparent, elevation: 0)),
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      scaffoldBackgroundColor: AppColors.black1,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        titleTextStyle: AppText.titleLG,
      ),
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primary,
      primaryColorDark: AppColors.primary,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.black2,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
      ),
      textTheme: textTheme,
      dialogTheme: const DialogTheme(
        titleTextStyle: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, // Màu nền của button
          foregroundColor: AppColors.white, // Màu chữ/icon
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Góc bo tròn
          ),
          textStyle: AppText.titleMD,
          elevation: 0, // Độ cao (shadow)
          minimumSize: const Size.fromHeight(48),
        ),
      ),
    ));
