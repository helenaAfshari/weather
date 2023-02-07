import 'package:clean_block/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:flutter/cupertino.dart';


@immutable
abstract class  CwStatus {}

class CwLoading extends CwStatus{}
//هرچی اطلاعات هست نمایش بدیم در این کلاس
class CwCompletes extends CwStatus{
  final CurrentCityEntity currentCityEntityl;
  CwCompletes(this.currentCityEntityl);
}
//زمانی که به ارور برمیخوریم
class CwError extends CwStatus{
   final String message;
  CwError(this.message); 
}
