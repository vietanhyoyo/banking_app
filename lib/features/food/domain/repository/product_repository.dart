import 'package:banking_app/features/food/domain/entities/product.dart';

abstract class ProductRepository {
  Future<ProductEntity> getProduct(String id);
  Future<List<ProductEntity>> getProductList();
}
