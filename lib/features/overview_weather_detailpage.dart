// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hava_durumu/pages/homepage_screen.dart';
import 'package:hava_durumu/providers/daily_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OverviewWeatherDetailpage extends StatefulWidget {
  const OverviewWeatherDetailpage({super.key});

  @override
  State<OverviewWeatherDetailpage> createState() =>
      _OverviewWeatherDetailpageState();
}

class _OverviewWeatherDetailpageState extends State<OverviewWeatherDetailpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, DailyProvider value, child) {
      return Container(
        height: 36.2.h,
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => HomePageScreen())));
                    },
                    icon: SvgPicture.asset("assets/images/left-arrow.svg")),
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
            SizedBox(height: 1.5.h),
            SizedBox(
                height: 10.h,
                width: 20.w,
                child:
                    SvgPicture.asset("assets/images/cloudy_rain_overview.svg")),
            SizedBox(height: 3.h),
            Text("${value.dailyResponse.list![value.index].main!.temp} °C",
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
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Last update 3.00 PM",
                    style: TextStyle(color: Color(0xffFFFFFF))),
                SizedBox(width: 2.w),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/images/retry.svg",
                    height: 1.7.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }));
  }
}
