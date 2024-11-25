import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/features/shopping/domain/entities/category.dart';
import 'package:banking_app/features/shopping/domain/entities/product.dart';

abstract class CategoryRepository {
  Future<DataState<List<CategoryEntity>>> getCategoryList();
  Future<DataState<List<ProductEntity>>> getProductListOfCatagory(String categoryId);
}
