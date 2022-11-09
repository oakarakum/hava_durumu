// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OverviewHomepage extends StatefulWidget {
  const OverviewHomepage({super.key});

  @override
  State<OverviewHomepage> createState() => _OverviewHomepageState();
}

class _OverviewHomepageState extends State<OverviewHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 21.h,
      width: 95.w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 220, 209, 209).withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], color: Color(0xff4F7FFA), borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Monday, December ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Color(0xffFFFFFF)),
                ),
                Text(
                  "3:30 PM",
                  style: TextStyle(color: Color(0xffFFFFFF)),
                )
              ],
            ),
            SizedBox(height: 1.2.h),
            Row(
              
              children: [
                SvgPicture.asset(
                  "assets/images/cloudy_rain_overview.svg",
                  //"assets/images/cloudy rain.svg",
                  //"assets/images/weather_condition.svg",
                  height: 12.h,
                  width: 30.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 13,left: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 57),
                        child: Text("18º C",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w400)),
                      ),
                      Text("Cloudy Rain",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)))
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                      height: 2.h,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
