import 'package:clean_arc/core/app/app.dart';
import 'package:clean_arc/core/error_handler/data_source_exception.dart';
import 'package:clean_arc/core/error_handler/failure.dart';
import 'package:clean_arc/core/network/network_info.dart';
import 'package:clean_arc/modules/home/data/data_source/remote_datasource.dart';
import 'package:clean_arc/modules/home/data/model/my_data.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../domain/repository/home_repository.dart';


class HomeRepositoryImp extends HomeRepository{
  NetworkInfo networkInfo ;
  HomeRemoteDataSource homeRemoteDataSource ;


  HomeRepositoryImp({required this.networkInfo , required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, MyData>> getData() async{
    if(await networkInfo.isConnected){
      try{
        Response response = await homeRemoteDataSource.getData();
        if(response.statusCode == 200){
          MyData myData = MyData.fromJson(response.data);
          return Right(myData);
        }else{
          return Left(Failure(message: response?.statusMessage ?? "" ,code : response?.statusCode ?? 0));
        }
      }on DioException catch(e){
        return Left(Failure(message: e.response?.statusMessage ?? "" ,code : e.response?.statusCode ?? 0));
      }
    }else{
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure(place: "Home getData"));
    }
  }

  @override
  Future<Either<Failure, String>> setData({required MyData data}) async {
    if(await networkInfo.isConnected){
      try{
        Response response = await homeRemoteDataSource.setData(data: data);
        if(response.statusCode == 200){
          return Right(response.data.toString());
        }else{
          return Left(Failure(message: response!.statusMessage.toString(), code: response?.statusCode ?? 0));
        }
      }on DioException catch(e){
        return Left(Failure(message: e.response!.statusMessage.toString(), code: e.response?.statusCode ?? 0));
      }
    }else{
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure(place: "place"));
    }
  }
}
