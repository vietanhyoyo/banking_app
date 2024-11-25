import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/features/shopping/domain/entities/auth.dart';

abstract class AuthRepository {
  Future<DataState<AuthEntity>> postLogin(Map<String, String> params);
}
