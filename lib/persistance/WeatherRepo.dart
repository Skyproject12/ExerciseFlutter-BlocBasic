import 'package:http/http.dart' as http; 
import 'dart:convert';  
import 'package:weather_block/model/WeatherModel.dart'; 

class WeatherRepo{ 
  Future<WeatherModel> getWeather(String city) async {
    final result = await http.Client().get("https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2"); 
    if(result.statusCode != 200) 
      throw Exception(); 
      
    // return the parse to convert the result request
    return parsedJson(result.body);
  }  
  // mendefinisikan json parse 
  WeatherModel parsedJson(final response){  
    // convert response
    final jsonDecode = json.decode(response); 
    // convert main to object  
    final jsonWeather = jsonDecode["main"]; 
    // return the data can convert in WeatherModel   
    return WeatherModel.fromJson(jsonWeather);
  }
}
