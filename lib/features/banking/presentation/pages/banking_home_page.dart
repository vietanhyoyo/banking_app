import 'dart:ui';

import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_shadow.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:banking_app/features/banking/presentation/widgets/blur_card.dart';
import 'package:banking_app/features/banking/presentation/widgets/cus_appbar.dart';
import 'package:banking_app/features/banking/presentation/widgets/cus_card.dart';
import 'package:banking_app/features/banking/presentation/widgets/transaction_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankingHomePage extends StatelessWidget {
  const BankingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusAppbar(),
      backgroundColor: AppColors.neutral3,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
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
        Positioned(
            top: MediaQuery.of(context).size.width / 16 * 9 - 40,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.sp),
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
                          children: [
                            TransactionButton(
                              icon: SvgPicture.asset(
                                "assets/svgs/hand_coin_icon.svg",
                                width: 24.sp,
                                height: 24.sp,
                              ),
                              label: "Deposit",
                            ),
                            TransactionButton(
                                icon: SvgPicture.asset(
                                  "assets/svgs/credit_card_icon.svg",
                                  width: 24.sp,
                                  height: 24.sp,
                                ),
                                label: "Card",
                                color: AppColors.secondary),
                            TransactionButton(
                                icon: SvgPicture.asset(
                                  "assets/svgs/cached_icon.svg",
                                  width: 24.sp,
                                  height: 24.sp,
                                ),
                                label: "Transfer",
                                color: AppColors.thirdly),
                            TransactionButton(
                                icon: SvgPicture.asset(
                                  "assets/svgs/ticket_icon.svg",
                                  width: 24.sp,
                                  height: 24.sp,
                                ),
                                label: "Voucher",
                                color: AppColors.fourth),
                          ],
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
                              Image.asset("assets/images/visa.png", height: 11.sp,)
                            ],
                          ),
                          ResSpace.h4(),
                          Text("Quick procedure, no personal income declaration required", style: AppText.bodySM,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
