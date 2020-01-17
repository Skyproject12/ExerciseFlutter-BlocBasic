import 'package:flutter/foundation.dart';

// make model to temp
class WeatherModel{ 
  final temp; 
  final presure; 
  final humidity; 
  final temp_max; 
  final temp_min;

  double get getTemp => temp-272.5; 
  double get getMaxTemp => temp_max -272.5; 
  double get getMinTemp => temp_min -272.5; 

  WeatherModel(this.temp, this.presure, this.humidity, this.temp_max, this.temp_min);  
  // method for convert json to take the object 
  factory WeatherModel.fromJson(Map<String, dynamic> json){  
    return WeatherModel( 
      json["temp"], 
      json["pressure"], 
      json["humadity"], 
      json["temp_max"], 
      json["temp_min"]
    );
  }
}