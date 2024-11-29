import 'dart:ui';

import 'package:banking_app/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CusCard extends StatelessWidget {
  final Widget child;

  const CusCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        child: Container(
          decoration: const BoxDecoration(color: AppColors.white),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: child,
          ),
        ));
  }
}
