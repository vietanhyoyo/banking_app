import 'package:banking_app/features/banking/presentation/bloc/login/login_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  ///Bloc
  sl.registerFactory<LoginBloc>(() => LoginBloc());
}
