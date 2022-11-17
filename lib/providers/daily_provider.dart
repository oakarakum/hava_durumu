import 'package:flutter/cupertino.dart';
import 'package:hava_durumu/models/daily_weather_response.dart';
import 'package:hava_durumu/services/api_service.dart';

class DailyProvider extends ChangeNotifier {
  DailyWeatherResponse dailyResponse = DailyWeatherResponse();
  bool isloading = false;
  int index = 0;

  getDailyDataa(context) async {
    isloading = true;
    dailyResponse = (await getDailyData(
        context))!; //Sonundaki ünlem boş gelemez diye "await" komutu verinin
    //gelmesi için bekliyor ve bir sonraki aşamaya geçiyor.
    isloading = false;
    notifyListeners();
  }

  pageChanger(int indexx) {
    index = indexx;
    notifyListeners();
  }
}
