import 'package:dio/dio.dart';
import 'package:hava_durumu/providers/daily_provider.dart';
import 'package:hava_durumu/providers/weather_provider.dart';

class Logging extends Interceptor {
  WeatherProvider? weatherProvider;
  DailyProvider? dailyProvider;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST ${options.method} => ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    //print('RESPONSE ${response.statusCode} => ${response.requestOptions.path}');
    switch (response.statusCode) {
      case 200:
        print(dailyProvider!.dailyResponse.city);
        /* print("Bşarılı");
        print(weatherProvider!.response.main!.temp); */
        break;
      default:
    }

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}
