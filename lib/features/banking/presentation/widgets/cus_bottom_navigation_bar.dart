import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusBottomNavigationBar extends StatelessWidget {
  final int value;
  final Function(int value) onChangeIndex;
  const CusBottomNavigationBar(
      {super.key, required this.value, required this.onChangeIndex});

  @override
  Widget build(BuildContext context) {
    final iconList = [
      {"icon": Icons.home, "label": "Home"},
      {"icon": Icons.poll_outlined, "label": "Analysis"},
      {"icon": Icons.history, "label": "History"},
      {"icon": Icons.credit_card, "label": "Card"},
    ];

    return AnimatedBottomNavigationBar.builder(
        backgroundColor: AppColors.white,
        activeIndex: value,
        elevation: 0,
        height: 66,
        onTap: (index) {
          onChangeIndex(index);
        },
        itemCount: iconList.length,
        gapLocation: GapLocation.center,
        leftCornerRadius: 16,
        rightCornerRadius: 16,
        notchSmoothness: NotchSmoothness.softEdge,
        tabBuilder: (int index, bool isActive) {
          return Column(
            children: [
              ResSpace.h8(),
              Icon(
                (iconList[index]["icon"] ?? Icons.home) as IconData?,
                size: 24.sp,
                color: isActive ? AppColors.fourth : AppColors.neutral11,
              ),
              Text(
                iconList[index]["label"] as String,
                style: isActive ? AppText.labelFourthSM : AppText.labelSM,
              )
            ],
          );
        });
  }
}
