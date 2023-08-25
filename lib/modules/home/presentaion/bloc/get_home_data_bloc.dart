import 'package:clean_arc/modules/home/data/model/my_data.dart';
import 'package:clean_arc/modules/home/presentaion/bloc/get_home_data_event.dart';
import 'package:clean_arc/modules/home/presentaion/bloc/get_home_data_statux.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_home_data.dart';


class HomeBloc extends Bloc<HomeEvent , HomeStatus>{
  HomeDataUseCase homeDataUseCase;
  HomeBloc({required this.homeDataUseCase}) : super(HomeInit()){
    on<GetHomeDataEvent>((event, emit) async {

      emit(HomeLoading());
      var response = await homeDataUseCase.call();
      response.fold((failure){
        emit(HomeFailed(failure: failure));
      }, (right){
        emit(HomeSuccess(myData: right));
      });
    });


    on<SetHomeDataEvent>((event, emit) async {
      emit(HomeLoading());
      var response = await homeDataUseCase.set(data: event.myData);
      response.fold((failure){
        emit(HomeFailed(failure: failure));
      }, (right){
        emit(HomeSuccess(myData: MyData()));
      });
    });

  }
}