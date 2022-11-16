import 'package:flutter/cupertino.dart';
import 'package:hava_durumu/models/current_weather_response.dart';
import 'package:hava_durumu/services/api_service.dart';

class WeatherProvider with ChangeNotifier {
  CurrentWeatherResponse response = CurrentWeatherResponse();
  bool isloading = false;

  getWeatherData(context) async {
    isloading = true;
    response = (await getCurrentData(
        context))!; //Sonundaki ünlem boş gelemz diye await verinnin gelmesi için bekliyor.
    isloading = false;
    notifyListeners();
  }
}
