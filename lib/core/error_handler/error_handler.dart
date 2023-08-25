
import 'dart:developer';

import 'data_source_exception.dart';
import 'package:dio/dio.dart';
import 'failure.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error , String place) {
    log(error.toString());
    if (error is DioException) {
      failure = _handleError(error , place); // dio error
    } else {
      failure = DataSource.DEFAULT.getFailure(place: place); // default error
    }
  }

  Failure _handleError(DioException error , String place) {
    switch (error.type) {

      case DioExceptionType.connectionTimeout:
        return DataSource.CONNECT_TIMEOUT.getFailure(place: place);

      case DioExceptionType.connectionError:
        return DataSource.SEND_TIMEOUT.getFailure(place: place);

      case DioExceptionType.sendTimeout:
        return DataSource.SEND_TIMEOUT.getFailure(place: place);

      case DioExceptionType.receiveTimeout:
        return DataSource.RECEIVE_TIMEOUT.getFailure(place: place);

      case DioExceptionType.cancel:
        return DataSource.CANCEL.getFailure(place: place);

      default :
        return DataSource.DEFAULT.getFailure(place: place);
    }
  }
}
