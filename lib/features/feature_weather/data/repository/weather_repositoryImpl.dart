
import 'package:clean_block/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:clean_block/features/feature_weather/data/model/CurrentCityModel%20.dart';
import 'package:clean_block/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:clean_block/core/resources/data_state.dart';
import 'package:clean_block/features/feature_weather/domain/repository/weather_repository.dart';
import 'package:dio/dio.dart';

class WeatherRepositoryImpl extends WeatherRepository{
  ApiProvider apiProvider;
  WeatherRepositoryImpl(this.apiProvider);

  @override
  Future<DataState<CurrentCityEntity>> fetchCurentWatherData(String cityName) async {
    try{
      //call Api
      Response response = await apiProvider.callCurentWeather(cityName);

      if(response.statusCode==200){
        //model 
        //یک شی هست از انتیتی
        CurrentCityEntity currentCityEntity = CurrentCityModel.fromJson(response.data);


          return DataSuccess(currentCityEntity);
      }else{
         return const DataFailed("Somthing went Wrong, Try again");
      }
     
    }catch(e){
       return const DataFailed("Please Check your conection.......");
    }
  }
  
}