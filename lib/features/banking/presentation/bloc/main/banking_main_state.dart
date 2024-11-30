part of 'banking_main_bloc.dart';

class BankingMainState extends Equatable {
  final int bottomBarIndex;

  const BankingMainState({this.bottomBarIndex = 0});

  BankingMainState copyWith({int? bottomBarIndex}) {
    return BankingMainState(
        bottomBarIndex: bottomBarIndex ?? this.bottomBarIndex);
  }

  @override
  List<Object> get props => [bottomBarIndex];
}
