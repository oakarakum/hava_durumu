// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hava_durumu/features/daily_daily_recommendation_listview.dart';
import 'package:hava_durumu/features/daily_recommendation.dart';
import 'package:hava_durumu/features/hourly_weather_forecast.dart';
import 'package:hava_durumu/features/overview_homepage.dart';
import 'package:hava_durumu/features/topbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Topbar(),
              SizedBox(height: 5.h),
              OverviewHomepage(),
              SizedBox(height: 2.5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hourly Weather",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              HourlyWeatherForecast(),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Daily",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ],
              ),
              SizedBox(height: 2.5.h),
              DailyRecommendation(),
              SizedBox(height: 2.5.h),
              DailyRecommendationListView()
            ],
          ),
        ),
      ),
    );
  }
}
