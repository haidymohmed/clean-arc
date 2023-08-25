import 'package:clean_arc/core/error_handler/response_code.dart';
import 'package:clean_arc/core/error_handler/response_message.dart';

import 'failure.dart';


enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORIZED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

extension DataSourceExtension on DataSource {
  Failure getFailure({required String place}) {
    switch (this) {
      case DataSource.SUCCESS:
        return Failure(code : ResponseCode.SUCCESS,  message : ResponseMessage.SUCCESS , place : place );
      case DataSource.NO_CONTENT:
        return Failure(code : ResponseCode.NO_CONTENT,  message : ResponseMessage.NO_CONTENT , place : place );
      case DataSource.BAD_REQUEST:
        return Failure(code : ResponseCode.BAD_REQUEST,  message :ResponseMessage.BAD_REQUEST , place : place );
      case DataSource.FORBIDDEN:
        return Failure(code : ResponseCode.FORBIDDEN,  message :ResponseMessage.FORBIDDEN , place : place );
      case DataSource.UNAUTHORIZED:
        return Failure(code : ResponseCode.UNAUTHORIZED,  message :ResponseMessage.UNAUTHORIZED , place : place );
      case DataSource.NOT_FOUND:
        return Failure(code : ResponseCode.NOT_FOUND,  message :ResponseMessage.NOT_FOUND , place : place );
      case DataSource.INTERNAL_SERVER_ERROR:
        return Failure(code : ResponseCode.INTERNAL_SERVER_ERROR,  message :ResponseMessage.INTERNAL_SERVER_ERROR , place : place );
      case DataSource.CONNECT_TIMEOUT:
        return Failure(code : ResponseCode.CONNECT_TIMEOUT,  message :ResponseMessage.CONNECT_TIMEOUT , place : place );
      case DataSource.CANCEL:
        return Failure(code : ResponseCode.CANCEL,  message :ResponseMessage.CANCEL , place : place );
      case DataSource.RECEIVE_TIMEOUT:
        return Failure(code : ResponseCode.RECEIVE_TIMEOUT,  message :ResponseMessage.RECEIVE_TIMEOUT , place : place );
      case DataSource.SEND_TIMEOUT:
        return Failure(code : ResponseCode.SEND_TIMEOUT,  message :ResponseMessage.SEND_TIMEOUT , place : place );
      case DataSource.CACHE_ERROR:
        return Failure(code : ResponseCode.CACHE_ERROR,  message :ResponseMessage.CACHE_ERROR , place : place );
      case DataSource.NO_INTERNET_CONNECTION:
        return Failure(code : ResponseCode.NO_INTERNET_CONNECTION,  message :ResponseMessage.NO_INTERNET_CONNECTION , place : place );
      case DataSource.DEFAULT:
        return Failure(code : ResponseCode.DEFAULT,  message :ResponseMessage.DEFAULT , place : place );
    }
  }
}
