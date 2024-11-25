import 'package:banking_app/features/food/domain/entities/category.dart';
import 'package:banking_app/features/food/domain/entities/product.dart';

abstract class CategoryRepository {
  Future<List<CategoryEntity>> getCategoryList();
  Future<List<ProductEntity>> getProductsByCategory(String id);
}
