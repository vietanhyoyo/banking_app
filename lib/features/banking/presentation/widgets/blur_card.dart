import 'dart:ui';

import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_shadow.dart';
import 'package:flutter/cupertino.dart';

class BlurCard extends StatelessWidget {
  final Widget child;

  const BlurCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: child),
            )));
  }
}
