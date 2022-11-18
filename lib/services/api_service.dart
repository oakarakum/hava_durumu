// ignore_for_file: avoid_print

import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:hava_durumu/models/daily_weather_bottom_response.dart';
import 'package:hava_durumu/models/daily_weather_response.dart';
import 'package:hava_durumu/services/logging.dart';
import '../models/current_weather_response.dart';
import 'package:http/http.dart' as http;

//Dio Options Değişkeni
final Dio _dio = Dio(BaseOptions(
    baseUrl: "http://api.openweathermap.org/data/2.5/",
    connectTimeout: 5000,
    receiveTimeout: 3000))
  ..interceptors.add(Logging());

/* Future<CurrentWeatherResponse?> getCurrentData(context) async {
  CurrentWeatherResponse weatherResponse;
  //var temp;
  try {
    //Http paketi ile değer alma örneği
    final response1 = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=41.947221&lon=30.127834&appid=9b0ef33925d3f78d3c7591c48ca1cce9&units=metric"));
    weatherResponse =
        CurrentWeatherResponse.fromJson(jsonDecode(response1.body));
    //temp = jsonDecode(response.body);
    //print(temp["main"]["temp"]);
    return weatherResponse;
    //print(response.body);
  } catch (e) {
    log(e.toString());
  }
  return null;
} */

//GetCurrent Data

Future<CurrentWeatherResponse?> getCurrentData(context) async {
  CurrentWeatherResponse weatherResponse;
  try {
    //Dio paketi kullanarak internetten veri çekme
    final response1 = await _dio.get(
        //Ya da tamamnı yazıp parametreleri eklemeden de yapabilirsin.
        //"https://api.openweathermap.org/data/2.5/weather?lat=41.947221&lon=30.127834&appid=9b0ef33925d3f78d3c7591c48ca1cce9&units=metric"
        "https://api.openweathermap.org/data/2.5/weather",
        queryParameters: {
          "appid": "9b0ef33925d3f78d3c7591c48ca1cce9",
          "lat": 41.947221,
          "lon": 30.127834,
          "units": "metric"
        });
    print(response1.data);

    return weatherResponse = CurrentWeatherResponse.fromJson(response1.data);
  } catch (a) {
    log(a.toString());
  }
  return null;
}

//Daily
Future<DailyWeatherResponse?> getDailyData(context) async {
  DailyWeatherResponse dailyResponse;
  try {
    //Dio paketi kullanarak internetten veri çekme
    final response2 = await _dio.get(
        "http://api.openweathermap.org/data/2.5/forecast",
        queryParameters: {
          "id": 524901,
          "appid": "9b0ef33925d3f78d3c7591c48ca1cce9",
          "units": "metric"
        });
    print(response2.data);

    return dailyResponse = DailyWeatherResponse.fromJson(response2.data);
  } catch (a) {
    log(a.toString());
  }
  return null;
}

//Daily Bottom
Future<WeatherBottomDailyResponse?> getDailyBottomDatas(context) async {
  WeatherBottomDailyResponse dailybottomResponse;
  try {
    final response3 = await _dio.get(
        "https://api.openweathermap.org/data/2.5/forecast",
        queryParameters: {
          "lat": 41.025224,
          "lon": 29.019222,
          "appid": "9b0ef33925d3f78d3c7591c48ca1cce9",
          "units": "metric"
        });

    print(response3.data);

    return dailybottomResponse =
        WeatherBottomDailyResponse.fromJson(response3.data);
  } catch (a) {
    log(a.toString());
  }
  return null;
} 




//Dio'suz örnek

/* Future<WeatherBottomDailyResponse?> getDailyBottomDatas(context) async {
  WeatherBottomDailyResponse dailybottomResponse;
  try {
    final response3 = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast?lat=41.025224&lon=29.019222&appid=9b0ef33925d3f78d3c7591c48ca1cce9&units=metric"));
    print(response3.body);

    return dailybottomResponse =
        WeatherBottomDailyResponse.fromJson(jsonDecode(response3.body));
  } catch (a) {
    log(a.toString());
  }
  return null;
} */
