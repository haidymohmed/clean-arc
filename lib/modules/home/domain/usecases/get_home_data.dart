import 'package:clean_arc/modules/home/data/model/my_data.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/failure.dart';
import '../repository/home_repository.dart';

class HomeDataUseCase {
  HomeRepository homeRepository;
  HomeDataUseCase({required this.homeRepository});

  Future<Either<Failure, MyData>> call(){
    return homeRepository.getData();
  }
  Future<Either<Failure, String>> set({required MyData data}){
    return homeRepository.setData(data: data);
  }
}