import 'package:flutter/foundation.dart';
import 'package:hava_durumu/models/daily_weather_bottom_response.dart';
import 'package:hava_durumu/services/api_service.dart';

class DailyBottomProvider extends ChangeNotifier {
  //İlk listedeki haftanın günlerini içeren liste

  List? dayList = [
    {"Day": "Monday", "DayNum": 1},
    {"Day": "Tuesday", "DayNum": 2},
    {"Day": "Wednesday", "DayNum": 3},
    {"Day": "Thursday", "DayNum": 4},
    {"Day": "Friday", "DayNum": 5},
    {"Day": "Saturday", "DayNum": 6},
    {"Day": "Sunday", "DayNum": 7}
  ];
  WeatherBottomDailyResponse dailyBottomResponse = WeatherBottomDailyResponse();
  bool isloading = false;
  int index = 0;

  getDailyBottomData(context) async {
    isloading = true;
    dailyBottomResponse = (await getDailyBottomDatas(context))!;
    isloading = false;
    notifyListeners();
  }
}
