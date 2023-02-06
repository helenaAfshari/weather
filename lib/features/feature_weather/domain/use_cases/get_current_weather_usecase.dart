//اب و هوا کنونی مارا بگیرد
//ازریپاسیتوری میگیره
import 'package:clean_block/core/resources/data_state.dart';
import 'package:clean_block/core/usecase/use_case.dart';
import 'package:clean_block/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:clean_block/features/feature_weather/domain/repository/weather_repository.dart';

class GetCurrentWeatherUseCase extends UseCase<DataState<CurrentCityEntity>,String>{
    final WeatherRepository weatherRepository;
    GetCurrentWeatherUseCase(this.weatherRepository);
    //یا میتونیم cityبزاریم برای string
     Future<DataState<CurrentCityEntity>>call (String param){
        return weatherRepository .fetchCurentWatherData(param);
     }
}