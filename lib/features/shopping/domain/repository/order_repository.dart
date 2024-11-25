import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/features/shopping/domain/entities/bill.dart';

abstract class OrderRepository {
  Future<DataState<List<BillEntity>>> getHistory();
}
