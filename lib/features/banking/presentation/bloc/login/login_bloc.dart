import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginAccountChanged>((event, emit) {
      emit(state.copyWith(account: event.account));
    });

    on<LoginPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<LoginSubmitted>((event, emit) {
      print(state.account);
      print(state.password);

      emit(state.copyWith(
          isSubmitting: true, isFailure: false, isSuccess: false));
    });
  }
}
