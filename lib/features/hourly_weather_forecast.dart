// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hava_durumu/pages/weather_detail_screen.dart';
import 'package:hava_durumu/providers/daily_provider.dart';
import 'package:hava_durumu/services/api_service.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HourlyWeatherForecast extends StatefulWidget {
  const HourlyWeatherForecast({super.key});

  @override
  State<HourlyWeatherForecast> createState() => _HourlyWeatherForecastState();
}

class _HourlyWeatherForecastState extends State<HourlyWeatherForecast> {
  DailyProvider? dailyProvider;

  @override
  void initState() {
    super.initState();
    dailyProvider = Provider.of<DailyProvider>(context, listen: false);
    dailyProvider!.getDailyDataa(context);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, DailyProvider value, child) {
      return SizedBox(
        height: 15.h,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  value.pageChanger(index);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => WeatherDetailScreen())));
                },
                child: Container(
                    width: 20.w,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 247, 247),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 2.h,
                          left: 0.5,
                          right: 0.5.w,
                          child: SvgPicture.asset(
                              "assets/images/storm_hourly.svg",
                              height: 4.5.h,
                              width: 3.w),
                        ),
                        Positioned(
                          top: 65,
                          left: 20,
                          child: Text(
                            //Derecenin gösterildiği yer
                            "${value.dailyResponse.list![index].main!.temp!.round().toString()} ºC",
                            style: TextStyle(
                                color: Color(0xff201C1C),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Positioned(
                          top: 88,
                          left: 19,
                          child: Text(
                            //Saat
                            "${value.dailyResponse.list![index].dtTxt.toString().split(" ").last.substring(0, 5)}",
                            style: TextStyle(
                                color: Color(0xff494343),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )),
              );
            })),
      );
    }));
  }
}
