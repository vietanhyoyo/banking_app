import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/shopping/domain/entities/category.dart';
import 'package:banking_app/features/shopping/domain/repository/category_repository.dart';

class GetCategoryListUseCase
    implements UseCase<DataState<List<CategoryEntity>>, void> {
  final CategoryRepository _categoryRepository;

  GetCategoryListUseCase(this._categoryRepository);

  @override
  Future<DataState<List<CategoryEntity>>> call({void params}) {
    return _categoryRepository.getCategoryList();
  }
}
