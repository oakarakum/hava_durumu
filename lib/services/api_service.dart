// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:hava_durumu/models/daily_weather_bottom_response.dart';
import 'package:hava_durumu/models/daily_weather_response.dart';

import '../models/current_weather_response.dart';
import 'package:http/http.dart' as http;

Future<CurrentWeatherResponse?> getCurrentData(context) async {
  CurrentWeatherResponse weatherResponse;
  //var temp;
  try {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=41.947221&lon=30.127834&appid=9b0ef33925d3f78d3c7591c48ca1cce9&units=metric"));
    weatherResponse =
        CurrentWeatherResponse.fromJson(jsonDecode(response.body));
    //temp = jsonDecode(response.body);
    //print(temp["main"]["temp"]);
    return weatherResponse;
    //print(response.body);
  } catch (e) {
    log(e.toString());
  }
  return null;
}

Future<DailyWeatherResponse?> getDailyData(context) async {
  DailyWeatherResponse dailyResponse;
  try {
    final response2 = await http.get(Uri.parse(
        "http://api.openweathermap.org/data/2.5/forecast?appid=9b0ef33925d3f78d3c7591c48ca1cce9&id=524901&units=metric"));
    return dailyResponse =
        DailyWeatherResponse.fromJson(jsonDecode(response2.body));
  } catch (a) {
    log(a.toString());
  }
  return null;
}

Future<WeatherBottomDailyResponse?> getDailyBottomDatas(context) async {
  WeatherBottomDailyResponse dailybottomResponse;
  try {
    final response3 = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast/?appid=aec7cf9d7f5c41cbdd4589acb0219dbb&id=524901&units=metric"));
    print(response3.body);

    return dailybottomResponse =
        WeatherBottomDailyResponse.fromJson(jsonDecode(response3.body));
  } catch (a) {
    log(a.toString());
  }
  return null;
}
