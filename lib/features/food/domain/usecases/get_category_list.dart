import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/food/domain/entities/category.dart';
import 'package:banking_app/features/food/domain/repository/category_repository.dart';

class GetCategoryListUseCase implements UseCase<List<CategoryEntity>, void> {
  final CategoryRepository _categoryRepository;

  GetCategoryListUseCase(this._categoryRepository);

  @override
  Future<List<CategoryEntity>> call({void params}) {
    return _categoryRepository.getCategoryList();
  }
}
