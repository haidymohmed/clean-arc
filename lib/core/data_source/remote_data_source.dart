import 'dart:developer';
import 'package:dio/dio.dart';

const String BASE_URL = "http://185.194.216.97:80/api/" ;
class ApiClientHelper{
  static late Dio dio ;
  static init(){
    dio = Dio(BaseOptions(
        baseUrl: BASE_URL
    ));
  }

  Future post({data, endPoint , headers}){
    log("$endPoint   $data   $headers");
    return dio.post(
        endPoint,
        data: data,
        options: Options(
            headers: headers
        )
    );
  }
  Future put({data, endPoint , headers , queryParameters}){
    log("$endPoint   $data   $headers $queryParameters");
    return dio.put(
        endPoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        )
    );
  }
}