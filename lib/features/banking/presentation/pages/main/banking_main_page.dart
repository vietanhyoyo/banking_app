import 'package:banking_app/core/constants/app_colors.dart';
import 'package:banking_app/features/banking/presentation/bloc/main/banking_main_bloc.dart';
import 'package:banking_app/features/banking/presentation/pages/main/banking_analysis_page.dart';
import 'package:banking_app/features/banking/presentation/pages/main/banking_card_page.dart';
import 'package:banking_app/features/banking/presentation/pages/main/banking_history_page.dart';
import 'package:banking_app/features/banking/presentation/pages/main/banking_home_page.dart';
import 'package:banking_app/features/banking/presentation/widgets/cus_appbar.dart';
import 'package:banking_app/features/banking/presentation/widgets/cus_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BankingMainPage extends StatelessWidget {
  BankingMainPage({super.key});

  final PageController _pageController = PageController();
  final List<Widget> _listPage = [
    BankingHomePage(),
    const BankingAnalysisPage(),
    const BankingHistoryPage(),
    const BankingCardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BankingMainBloc, BankingMainState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CusAppbar(),
          body: _buildBody(context, state),
          backgroundColor: AppColors.neutral3,
          bottomNavigationBar: CusBottomNavigationBar(
            value: state.bottomBarIndex,
            onChangeIndex: (value) {
              _pageController.jumpToPage(value);
              context.read<BankingMainBloc>().add(BottomBarIndexChanged(value));
            },
          ),
          extendBody:
              true, // Important to remove background bottom navigation bar
          floatingActionButton: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary,
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.6),
                  blurRadius: 20.0,
                  spreadRadius: 0,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: FloatingActionButton(
              onPressed: () {},
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: const Icon(
                Icons.qr_code_scanner_rounded,
                size: 28,
                color: AppColors.white,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, BankingMainState state) {
    return PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          return _listPage[index];
        },
        onPageChanged: (index) {
          context.read<BankingMainBloc>().add(BottomBarIndexChanged(index));
        });
  }
}
