import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/features/shopping/domain/entities/slider.dart';

abstract class SliderRepository {
  Future<DataState<List<SliderEntity>>> getSliders();
}
