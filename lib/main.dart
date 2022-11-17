import 'package:flutter/material.dart';
import 'package:hava_durumu/core/app_constant.dart';
import 'package:hava_durumu/models/current_weather_response.dart';
import 'package:hava_durumu/models/daily_weather_response.dart';
import 'package:hava_durumu/pages/homepage_screen.dart';
import 'package:hava_durumu/pages/weather_detail_screen.dart';
import 'package:hava_durumu/providers/daily_bottom_provider.dart';
import 'package:hava_durumu/providers/daily_provider.dart';
import 'package:hava_durumu/providers/weather_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'models/daily_weather_bottom_response.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<WeatherProvider>(create: (_) => WeatherProvider()),
      ChangeNotifierProvider<DailyProvider>(create: (_) => DailyProvider()),
      ChangeNotifierProvider(create: ((_) => DailyBottomProvider())),
      //ChangeNotifierProvider(create: ((context) => DayyJson())),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePageScreen(),
        );
      },
    );
  }
}
