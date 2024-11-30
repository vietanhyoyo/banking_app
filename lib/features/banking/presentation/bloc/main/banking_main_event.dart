part of 'banking_main_bloc.dart';

abstract class BankingMainEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class BottomBarIndexChanged extends BankingMainEvent {
  final int bottomBarIndex;
  BottomBarIndexChanged(this.bottomBarIndex);

  @override
  List<Object> get props => [bottomBarIndex];
}
