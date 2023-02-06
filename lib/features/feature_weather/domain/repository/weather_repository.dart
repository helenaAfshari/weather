
import 'package:clean_block/core/resources/data_state.dart';
import 'package:clean_block/features/feature_weather/domain/entities/current_city_entity.dart';

abstract class WeatherRepository{

  Future<DataState<CurrentCityEntity>> fetchCurentWatherData(String cityName);
}