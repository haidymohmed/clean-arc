import 'package:clean_arc/core/error_handler/failure.dart';
import 'package:clean_arc/modules/home/data/model/my_data.dart';

abstract class HomeStatus {}

class HomeInit extends HomeStatus {}
class HomeLoading extends HomeStatus {}
class HomeSuccess extends HomeStatus {
  MyData myData ;
  HomeSuccess({required this.myData});
}
class HomeFailed extends HomeStatus {
  Failure failure ;
  HomeFailed({required this.failure});
}

