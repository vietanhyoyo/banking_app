import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusInput extends StatelessWidget {
  final String? hintText;
  const CusInput({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        style: AppText.bodyMD,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12.sp, vertical: 12.sp),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
