
import 'package:bloc/bloc.dart';
import 'package:clean_block/core/resources/data_state.dart';
import 'package:clean_block/features/feature_weather/domain/use_cases/get_current_weather_usecase.dart';
import 'package:clean_block/features/feature_weather/presentation/bloc/cw_status.dart';
import 'package:clean_block/features/feature_weather/presentation/bloc/home_event.dart';
import 'package:clean_block/features/feature_weather/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent , HomeState>{
 final GetCurrentWeatherUseCase getCurrentWeatherUseCase ;
  //به علت این که اول لودینگ باید در برنامه لود شود
  HomeBloc(this.getCurrentWeatherUseCase):super(HomeState(cwStatus: CwLoading())){
    //اینجا داره eventLoadCw را
    //بهش stream میده گوش فرا میدهد
    //هرموقع هرجایی در اپلیکیشنمون از این استفاده کنیم صدا بزنیم این متد ما خوانده میشود

    //اینجا یکی داریم که اسمش cwهست 
    //اگر چندتا داشتیم اینجا هم باید بنویسیم با اسم خودش 
    on<LoadCwEvent>((event, emit)async{
       emit(state.copyWith(newCwStatus: CwLoading()));
       DataState dataState = await getCurrentWeatherUseCase(event.cityName);
       if(dataState is DataSuccess){
         emit(state.copyWith(newCwStatus: CwCompletes(dataState.data)));
       }
         if(dataState is DataFailed){
            emit(state.copyWith(newCwStatus: CwError(dataState.error!)));
       }

    });
  }
}