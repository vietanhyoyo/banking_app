import 'package:banking_app/features/banking/presentation/bloc/login/login_bloc.dart';
import 'package:banking_app/features/banking/presentation/bloc/main/banking_main_bloc.dart';
import 'package:banking_app/features/banking/presentation/pages/main/banking_main_page.dart';
import 'package:banking_app/features/banking/presentation/pages/auth/login_page.dart';
import 'package:banking_app/injection_container.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Handler notHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
      Scaffold(
    body: Center(
      child: Text('$params'),
    ),
  ),
);

///Banking App Handler]
Handler loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
        BlocProvider<LoginBloc>(
          create: (context) => sl<LoginBloc>(),
          child: const LoginPage(),
        ));

Handler bankingMainHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
        BlocProvider(
          create: (context) => BankingMainBloc(),
          child: BankingMainPage(),
        ));
