
//باید حتما بخشی از homeBlocباشد
// part of 'home_bloc.dart';
import 'package:clean_block/features/feature_weather/presentation/bloc/cw_status.dart';

class HomeState {
  CwStatus cwStatus;
  HomeState({required this.cwStatus});
  HomeState copyWith({
     CwStatus? newCwStatus,
  }
    
  ){
    return HomeState(cwStatus: newCwStatus?? this.cwStatus);
  }
}
