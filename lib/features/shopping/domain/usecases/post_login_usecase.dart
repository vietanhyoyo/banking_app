import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/shopping/domain/entities/auth.dart';
import 'package:banking_app/features/shopping/domain/repository/auth_repository.dart';

class PostLoginUseCase
    implements UseCase<DataState<AuthEntity>, Map<String, String>> {
  final AuthRepository _authRepository;

  PostLoginUseCase(this._authRepository);

  @override
  Future<DataState<AuthEntity>> call({Map<String, String>? params}) {
    return _authRepository.postLogin(params!);
  }
}
