import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/food/domain/entities/product.dart';
import 'package:banking_app/features/food/domain/repository/product_repository.dart';

class GetProductListUseCase implements UseCase<List<ProductEntity>, void> {
  final ProductRepository _productRepository;

  GetProductListUseCase(this._productRepository);

  @override
  Future<List<ProductEntity>> call({void params}) {
    return _productRepository.getProductList();
  }
}
