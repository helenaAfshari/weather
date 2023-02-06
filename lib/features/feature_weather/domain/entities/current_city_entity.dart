// TODO Implement this library.
import 'package:clean_block/features/feature_weather/data/model/CurrentCityModel%20.dart';
import 'package:equatable/equatable.dart';

class CurrentCityEntity extends Equatable{
final Coord? coord;
final List<Weather>? weather;
final String? base;
final Main? main;
final int? visibility;
final Wind? wind;
final Rain? rain;
final Clouds? clouds;
final int? dt;
final Sys? sys;
final int? timezone;
final int? id;
final String? name;
final int? cod;

  const CurrentCityEntity(
    this.coord, 
    this.weather, 
    this.base, 
    this.main, 
    this.visibility, 
    this.wind, 
    this.rain, 
    this.clouds, 
    this.dt, 
    this.sys, 
    this.timezone, 
    this.id, 
    this.name, 
    this.cod);

  //parapsبرای مقایسه باید چه متغیرهایی را مدنظر بگیریم
  @override
  // TODO: implement props
  List<Object?> get props =>[

  ];

}