import 'dart:ui';

import 'package:banking_app/config/routes/application.dart';
import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_shadow.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:banking_app/features/banking/presentation/widgets/cus_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BankingHomePage extends StatelessWidget {
  const BankingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusAppbar(),
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
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [AppShadow.cardShadow],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                          decoration: const BoxDecoration(
                            color: AppColors.whiteOpa90,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(AppDimens.d24.sp),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
