import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CusAppbar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 180.sp,
      leading: Row(
        children: [
          SizedBox(
            width: AppDimens.d24.sp,
          ),
          SizedBox(
            width: 40,
            height: 40,
            child: ClipOval(
              child: Image.asset(
                "assets/images/tanjirou.jpeg",
                fit: BoxFit.cover, // Đảm bảo ảnh vừa khít
              ),
            ),
          ),
          SizedBox(
            width: AppDimens.d8.sp,
          ),
          Text(
            "User name",
            style: AppText.bodyMD,
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            Icon(
              Icons.cached,
              size: 24.sp,
              color: AppColors.primary,
            ),
            SizedBox(
              width: AppDimens.d14.sp,
            ),
            Icon(
              Icons.notifications_none,
              size: 24.sp,
              color: AppColors.primary,
            ),
            SizedBox(
              width: AppDimens.d24.sp,
            ),
          ],
        )
      ],
    );
  }
}
