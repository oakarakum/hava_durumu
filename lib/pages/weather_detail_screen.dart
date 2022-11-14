// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hava_durumu/features/detail_information_gridview.dart';
import 'package:hava_durumu/features/hourly_weather_forecast.dart';
import 'package:hava_durumu/features/overview_weather_detailpage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WeatherDetailScreen extends StatefulWidget {
  const WeatherDetailScreen({super.key});

  @override
  State<WeatherDetailScreen> createState() => _WeatherDetailScreenState();
}

class _WeatherDetailScreenState extends State<WeatherDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Color(0xff4F80FA),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OverviewWeatherDetailpage(),
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 2.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hourly Weather",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  SizedBox(height: 2.5.h),
                  HourlyWeatherForecast(),
                  SizedBox(height: 2.h),
                  Text(
                    "Information Details",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    height: 15.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffFBFBFB),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.h),
                          child: SvgPicture.asset("assets/images/scoring.svg"),
                        ),
                        SizedBox(width: 5.w),
                        Padding(
                          padding: EdgeInsets.only(top: 3.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("AQI - Very Good",
                                  style: TextStyle(
                                      color: Color(0xff201C1C),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18)),
                              Text(
                                "Air quality in your area for nowvery good.\nNo air pollution which causes various \ndiseases.",
                                style: TextStyle(color: Color(0xff494343)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  DetailInfoGridview()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
