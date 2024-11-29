import 'package:banking_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayIconButton extends StatelessWidget {
  final Widget icon;
  final String text;

  const PayIconButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.neutral5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.sp, vertical: 8.sp),
        child: Column(
          children: [icon, Text(text)],
        ),
      ),
    );
  }
}
