import 'package:clean_arc/core/data_source/remote_data_source.dart';
import 'package:clean_arc/modules/home/data/data_source/remote_datasource.dart';
import 'package:clean_arc/modules/home/data/model/my_data.dart';

class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  ApiClientHelper apiClientHelper ;
  HomeRemoteDataSourceImp({required this.apiClientHelper});
  @override
  Future getData() {
    return apiClientHelper.put(
      endPoint: "gdfvg",
      headers: {

      }
    );
  }

  @override
  Future setData({required MyData data}) {
    return apiClientHelper.post(
        endPoint: "gdfvg",
      data: data.toJson()
    );
  }
}