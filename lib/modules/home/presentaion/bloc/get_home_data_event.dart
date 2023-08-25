import 'package:clean_arc/modules/home/data/model/my_data.dart';

abstract class HomeEvent {}

class GetHomeDataEvent extends HomeEvent {

}

class SetHomeDataEvent extends HomeEvent {
  MyData myData ;
  SetHomeDataEvent(this.myData);
}