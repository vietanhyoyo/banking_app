import 'dart:ui';

import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:banking_app/features/banking/presentation/widgets/blur_card.dart';
import 'package:banking_app/features/banking/presentation/widgets/cus_card.dart';
import 'package:banking_app/features/banking/presentation/widgets/pay_icon_button.dart';
import 'package:banking_app/features/banking/presentation/widgets/transaction_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankingHomePage extends StatelessWidget {
  BankingHomePage({super.key});

  final _transactions = [
    {
      "icon": "hand_coin_icon.svg",
      "label": "Deposit",
      "color": AppColors.primary
    },
    {
      "icon": "credit_card_icon.svg",
      "label": "Card",
      "color": AppColors.secondary
    },
    {
      "icon": "cached_icon.svg",
      "label": "Transfer",
      "color": AppColors.thirdly
    },
    {"icon": "ticket_icon.svg", "label": "Voucher", "color": AppColors.fourth},
  ];

  final _payIcons = [
    {"icon": "lightning_bolt_icon.svg", "text": "Electricity"},
    {"icon": "water_icon.svg", "text": "Water"},
    {"icon": "wifi_icon.svg", "text": "Internet"},
    {"icon": "school_icon.svg", "text": "Tuition"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: IntrinsicHeight(
        child: Stack(
          children: [
            Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CarouselSlider(
                    slideTransform: const CubeTransform(),
                    unlimitedMode: true,
                    children: [
                      Image.asset(
                        "assets/images/background/banner_home.png",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/background/banner_home.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.sp, left: 24.sp, top: 180.sp),
              child: Column(
                children: [
                  BlurCard(
                      child: Padding(
                    padding: EdgeInsets.all(AppDimens.d24.sp),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Account",
                              style: AppText.labelLG,
                            ),
                            Text(
                              "9234578923",
                              style: AppText.labelPrimaryLG,
                            ),
                          ],
                        ),
                        ResSpace.h4(),
                        Row(
                          children: [
                            Text(
                              '\$ 9,390,244,000.00',
                              style: AppText.titleLG,
                            ),
                          ],
                        ),
                        ResSpace.h16(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: _transactions.map((t) {
                            return TransactionButton(
                              icon: SvgPicture.asset(
                                "assets/svgs/${t['icon']}",
                                width: 24.sp,
                                height: 24.sp,
                              ),
                              label: t['label'] as String,
                              color: t['color'] as Color?,
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  )),
                  ResSpace.h14(),
                  CusCard(
                    child: Padding(
                      padding: EdgeInsets.all(18.sp),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Visa Card Registration",
                                style: AppText.labelLG,
                              ),
                              Image.asset(
                                "assets/images/visa.png",
                                height: 11.sp,
                              )
                            ],
                          ),
                          ResSpace.h4(),
                          Text(
                            "Quick procedure, no personal income declaration required",
                            style: AppText.bodySM,
                          )
                        ],
                      ),
                    ),
                  ),
                  ResSpace.h14(),
                  CusCard(
                    child: Padding(
                      padding: EdgeInsets.all(18.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pay Bill",
                            style: AppText.labelLG,
                          ),
                          ResSpace.h12(),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: _payIcons.map((p) {
                                return Row(
                                  children: [
                                    PayIconButton(
                                      icon: SvgPicture.asset(
                                          "assets/svgs/${p['icon']}"),
                                      text: p['text'] as String,
                                    ),
                                    ResSpace.w8(),
                                  ],
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ResSpace.h200(),
                  ResSpace.h200(),
                  ResSpace.h200()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
