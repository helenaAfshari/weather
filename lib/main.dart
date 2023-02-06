import 'package:clean_block/core/widget/main_wrapper.dart';
import 'package:clean_block/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:clean_block/features/feature_weather/data/repository/weather_repositoryImpl.dart';
import 'package:clean_block/features/feature_weather/domain/use_cases/get_current_weather_usecase.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      GetCurrentWeatherUseCase getCurrent = GetCurrentWeatherUseCase(WeatherRepositoryImpl(ApiProvider()));
      getCurrent.call('tehran');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MainWraper(),
    );
  }
}

