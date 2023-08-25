import 'package:clean_arc/core/error_handler/failure.dart';
import 'package:dartz/dartz.dart';

import '../../data/model/my_data.dart';

abstract class HomeRepository {

  Future<Either<Failure, MyData>> getData ();
  Future<Either<Failure, String>> setData ({required MyData data});

}