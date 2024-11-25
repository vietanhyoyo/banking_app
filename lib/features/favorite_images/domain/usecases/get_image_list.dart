import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/favorite_images/domain/entities/image.dart';
import 'package:banking_app/features/favorite_images/domain/repository/image_repository.dart';

class GetImageListUseCase implements UseCase<List<ImageEntity>, void> {
  final ImageRepository _imageRepository;

  GetImageListUseCase(this._imageRepository);

  @override
  Future<List<ImageEntity>> call({void params}) {
    return _imageRepository.getImageList();
  }
}
