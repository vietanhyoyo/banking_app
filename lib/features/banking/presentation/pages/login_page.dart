import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/core/constants/app_dimens.dart';
import 'package:banking_app/core/constants/app_text_style.dart';
import 'package:banking_app/features/banking/presentation/bloc/login/login_bloc.dart';
import 'package:banking_app/features/banking/presentation/widgets/cus_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          _buildBody(context),
          _buildBottomSheet(context),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CarouselSlider(
      slideTransform: const CubeTransform(),
      slideIndicator: CircularSlideIndicator(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 70),
        currentIndicatorColor: Colors.white,
      ),
      unlimitedMode: true,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "assets/images/background/poster_app.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "assets/images/background/poster_app.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: IntrinsicHeight(
          child: Stack(
            alignment: Alignment.center,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.whiteOpa90,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppDimens.d40,
                  right: AppDimens.d24,
                  left: AppDimens.d24,
                  bottom: AppDimens.d34,
                ),
                child: BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Account",
                              style: AppText.labelLG,
                            ),
                            CusInput(
                              onChanged: (value) {
                                context
                                    .read<LoginBloc>()
                                    .add(LoginAccountChanged(value));
                              },
                            ),
                          ],
                        ),
                        ResSpace.h14(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: AppText.labelLG,
                            ),
                            CusInput(
                              onChanged: (value) {
                                context
                                    .read<LoginBloc>()
                                    .add(LoginPasswordChanged(value));
                              },
                              isPassword: true,
                            ),
                          ],
                        ),
                        ResSpace.h14(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 48),
                          ),
                          onPressed: () {
                            context.read<LoginBloc>().add(LoginSubmitted());
                          },
                          child: const Text("LOGIN"),
                        ),
                        ResSpace.h14(),
                        SvgPicture.asset(
                          "assets/svgs/biometric_icon.svg",
                          semanticsLabel: 'Acme Logo',
                          width: 60.sp,
                          height: 60.sp,
                        ),
                        ResSpace.h14(),
                        Container(
                          width: 140.sp,
                          height: 2.sp,
                          color: AppColors.fourth,
                        ),
                        ResSpace.h14(),
                        TextButton(
                          onPressed: () {
                            print("Login button pressed");
                          },
                          child: const Text("Register"),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
