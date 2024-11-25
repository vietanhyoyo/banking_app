import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/core/usecase/usecase.dart';
import 'package:banking_app/features/shopping/domain/entities/slider.dart';
import 'package:banking_app/features/shopping/domain/repository/slider_repository.dart';

class GetSlidersUseCase
    implements UseCase<DataState<List<SliderEntity>>, void> {
  final SliderRepository _sliderRepository;

  GetSlidersUseCase(this._sliderRepository);

  @override
  Future<DataState<List<SliderEntity>>> call({void params}) {
    return _sliderRepository.getSliders();
  }
}
