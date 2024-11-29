import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final Color? color;

  const TransactionButton(
      {super.key,
      required this.icon,
      required this.label,
      this.color = AppColors.primary});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Padding(padding: EdgeInsets.all(12.sp), child: icon),
        ),
        ResSpace.h4(),
        Text(
          label,
          style: AppText.bodySM,
        )
      ],
    );
  }
}
