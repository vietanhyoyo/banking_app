import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/features/shopping/domain/entities/product.dart';

abstract class ProductRepository {
  Future<DataState<List<ProductEntity>>> getProductList(Map<String, dynamic> params);
  Future<DataState<ProductEntity>> getProductDetails(String params);
}
