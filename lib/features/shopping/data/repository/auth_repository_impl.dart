import 'dart:io';

import 'package:banking_app/core/resources/data_state.dart';
import 'package:banking_app/features/shopping/data/data_sources/remote/shopping_api_service.dart';
import 'package:banking_app/features/shopping/domain/entities/auth.dart';
import 'package:banking_app/features/shopping/domain/repository/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ShoppingApiService _shoppingApiService;

  AuthRepositoryImpl(this._shoppingApiService);

  @override
  Future<DataState<AuthEntity>> postLogin(Map<String, String> params) async {
    try {
      final httpResponse = await _shoppingApiService
          .postLogin(params);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
            DioException(requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
