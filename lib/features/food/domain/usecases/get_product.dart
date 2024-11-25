import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/food/domain/entities/product.dart';
import 'package:banking_app/features/food/domain/repository/product_repository.dart';

class GetProductUseCase implements UseCase<ProductEntity, String> {
  final ProductRepository _productRepository;

  GetProductUseCase(this._productRepository);

  @override
  Future<ProductEntity> call({String? params}) {
    return _productRepository.getProduct(params ?? "");
  }
}
