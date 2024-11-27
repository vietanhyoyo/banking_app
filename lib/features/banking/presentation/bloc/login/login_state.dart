part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String account;
  final String password;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  const LoginState({
    this.account = "",
    this.password = "",
    this.isSubmitting = false,
    this.isSuccess = false,
    this.isFailure = false,
  });

  LoginState copyWith({
    String? account,
    String? password,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isFailure,
  }) {
    return LoginState(
        account: account ?? this.account,
        password: password ?? this.password,
        isSubmitting: isSubmitting ?? this.isSubmitting,
        isSuccess: isSuccess ?? this.isSuccess,
        isFailure: isFailure ?? this.isFailure);
  }

  @override
  List<Object> get props =>
      [account, password, isSubmitting, isSuccess, isFailure];
}
