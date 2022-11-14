import 'dart:convert';
import 'dart:developer';

import '../modals/current_weather_response.dart';
import 'package:http/http.dart' as http;

Future<CurrentWeatherResponse?> getCurrentData(context) async {
  CurrentWeatherResponse weatherResponse;
  try {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=40.947221&lon=29.127834&appid=9b0ef33925d3f78d3c7591c48ca1cce9"));
    weatherResponse =
        CurrentWeatherResponse.fromJson(jsonDecode(response.body));
    return weatherResponse;
  } catch (e) {
    log(e.toString());
  }
  return null;
}
