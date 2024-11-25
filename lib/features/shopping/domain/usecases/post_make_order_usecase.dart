import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/shopping/domain/entities/bill.dart';
import 'package:banking_app/features/shopping/domain/repository/cart_repository.dart';

class PostMakeOrderUseCase
    implements UseCase<DataState<BillEntity>, Map<String, dynamic>> {
  final CartRepository _cartRepository;

  PostMakeOrderUseCase(this._cartRepository);

  @override
  Future<DataState<BillEntity>> call({Map<String, dynamic>? params}) {
    return _cartRepository.postMakeOrder(params!);
  }
}
