import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'banking_main_event.dart';
part 'banking_main_state.dart';

class BankingMainBloc extends Bloc<BankingMainEvent, BankingMainState> {
  BankingMainBloc() : super(const BankingMainState()) {
    on<BottomBarIndexChanged>((event, emit) {
      emit(state.copyWith(bottomBarIndex: event.bottomBarIndex));
    });
  }
}
