import 'package:flutter/cupertino.dart';
import 'package:hava_durumu/models/current_weather_response.dart';
import 'package:hava_durumu/models/daily_weather_response.dart';
import 'package:hava_durumu/services/api_service.dart';

class DailyProvider with ChangeNotifier {
  DailyWeatherResponse response2 = DailyWeatherResponse();
  bool isloading = false;

  getDailyData(context) async {
    isloading = true;
    response2 = (await getDailyData(
        context))!; //Sonundaki ünlem boş gelemez diye "await" komutu verinin
    //gelmesi için bekliyor ve bir sonraki aşamaya geçiyor.
    isloading = false;
    notifyListeners();
  }
}
