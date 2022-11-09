// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hava_durumu/features/detail_information_gridview.dart';
import 'package:hava_durumu/features/hourly_weather_forecast.dart';
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
            Container(
              height: 39.h,
              width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff4F80FA),
                    Color(0xff3764D7),
                    Color(0xff335FD1),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_left,
                          color: Color(0xffFFFFFF),
                          size: 25,
                        ),
                      ),
                      Text("Tanjungsiang, Subang",
                          style: TextStyle(color: Color(0xffFFFFFF))),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/images/3dots.svg"))
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Text("Monday, December 20, 2021 - 3.30 PM",
                      style: TextStyle(color: Color(0xffFFFFFF))),
                  SizedBox(height: 1.h),
                  SizedBox(
                      height: 10.h,
                      width: 20.w,
                      child:
                          SvgPicture.asset("assets/images/cloudy_rainyy.svg")),
                  SizedBox(height: 3.h),
                  Text("18º C",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 1.h),
                  Text("Cloudy Rain",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text("Last update 3.00 PM",
                            style: TextStyle(color: Color(0xffFFFFFF))),
                      ),
                      SizedBox(width: 2.w),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/images/retry.svg",
                            height: 1.7.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 3.h),
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
                  SizedBox(height: 2.h),
                  Container(
                    height: 15.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffFBFBFB),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.5.h),
                          child: SvgPicture.asset("assets/images/scoring.svg"),
                        ),
                        SizedBox(width: 5.w),
                        Padding(
                          padding: EdgeInsets.only(top: 2.h),
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
