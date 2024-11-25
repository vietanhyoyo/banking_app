import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/shopping/domain/entities/product.dart';
import 'package:banking_app/features/shopping/domain/repository/product_repository.dart';

class GetProductDetailsUseCase
    implements UseCase<DataState<ProductEntity>, String> {
  final ProductRepository _productRepository;

  GetProductDetailsUseCase(this._productRepository);

  @override
  Future<DataState<ProductEntity>> call({String? params}) {
    return _productRepository.getProductDetails(params ?? "");
  }
}
