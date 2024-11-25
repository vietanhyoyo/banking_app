import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/food/domain/entities/product.dart';
import 'package:banking_app/features/food/domain/repository/category_repository.dart';

class GetProductsByCategoryUseCase
    implements UseCase<List<ProductEntity>, String> {
  final CategoryRepository _categoryRepository;

  GetProductsByCategoryUseCase(this._categoryRepository);

  @override
  Future<List<ProductEntity>> call({String? params}) {
    return _categoryRepository.getProductsByCategory(params ?? "");
  }
}
