import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:banking_app/features/banking/presentation/widgets/cus_card.dart';
import 'package:banking_app/features/banking/presentation/widgets/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankingCardPage extends StatelessWidget {
  const BankingCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "icon": "assets/svgs/hand_coin_icon.svg",
        "color": AppColors.primary,
        "text": "Deposit"
      },
      {
        "icon": "assets/svgs/cached_icon.svg",
        "color": AppColors.fourth,
        "text": "Transfer"
      },
      {
        "icon": "assets/svgs/plus_icon.svg",
        "color": AppColors.secondary,
        "text": "Add card"
      },
    ];

    final transactions = [
      {
        "iconPath": "assets/svgs/food_icon.svg",
        "iconColor": AppColors.fourth,
        "containerColor": AppColors.fourth.withOpacity(0.2),
        "title": "Food",
        "subtitle": "15:00 - 07/11/2024",
        "amount": "-\$15.80"
      },
      {
        "iconPath": "assets/svgs/movie_icon.svg",
        "iconColor": AppColors.primary,
        "containerColor": AppColors.primary.withOpacity(0.2),
        "title": "Movie",
        "subtitle": "13:18 - 07/11/2024",
        "amount": "-\$10.93"
      },
      {
        "iconPath": "assets/svgs/school_icon.svg",
        "iconColor": AppColors.secondary,
        "containerColor": AppColors.secondary.withOpacity(0.2),
        "title": "Tuition",
        "subtitle": "10:43 - 07/11/2024",
        "amount": "-\$167.23"
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResSpace.h10(),
          _buildActionCard(items),
          ResSpace.h10(),
          Text("Recent Transactions", style: AppText.labelLG),
          ...transactions.map((transaction) => HistoryCard(
                iconPath: transaction['iconPath'] as String,
                iconColor: transaction['iconColor'] as Color,
                containerColor: transaction['containerColor'] as Color,
                title: transaction['title'] as String,
                subtitle: transaction['subtitle'] as String,
                amount: transaction['amount'] as String,
              )),
        ],
      ),
    );
  }

  Widget _buildActionCard(List<Map<String, Object>> items) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.neutral5),
        borderRadius: BorderRadius.all(Radius.circular(14.sp)),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: items.map((item) {
            return Column(
              children: [
                DashedCircle(
                  borderColor: item['color'] as Color,
                  child: Container(
                    width: 40.sp,
                    height: 40.sp,
                    child: Center(
                      child: SvgPicture.asset(
                        item['icon']! as String,
                        color: item['color'] as Color,
                        width: 24.sp,
                        height: 24.sp,
                      ),
                    ),
                  ),
                ),
                ResSpace.h4(),
                Text(item['text']! as String, style: AppText.bodySM),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String iconPath;
  final Color iconColor;
  final Color containerColor;
  final String title;
  final String subtitle;
  final String amount;

  const HistoryCard({
    Key? key,
    required this.iconPath,
    required this.iconColor,
    required this.containerColor,
    required this.title,
    required this.subtitle,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.sp),
      child: CusCard(
        child: Padding(
          padding: EdgeInsets.all(18.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: SvgPicture.asset(
                    iconPath,
                    color: iconColor,
                  ),
                ),
              ),
              ResSpace.w8(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppText.labelLG,
                    ),
                    Text(
                      subtitle,
                      style: AppText.bodySM,
                    ),
                  ],
                ),
              ),
              ResSpace.w8(),
              Text(
                amount,
                style: AppText.bodyMD,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
