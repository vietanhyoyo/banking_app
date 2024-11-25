import 'package:banking_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return const Text("body");
  }
}
