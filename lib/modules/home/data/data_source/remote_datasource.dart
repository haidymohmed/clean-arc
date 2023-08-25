
import '../model/my_data.dart';

abstract class HomeRemoteDataSource {
  Future getData();
  Future setData({required MyData data});
}