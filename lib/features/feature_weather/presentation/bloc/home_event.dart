
import 'package:flutter/cupertino.dart';

@immutable
class HomeEvent {}
class LoadCwEvent extends HomeEvent{
  final String cityName;
  LoadCwEvent(this.cityName);
}