// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DailyRecommendationListView extends StatefulWidget {
  const DailyRecommendationListView({super.key});

  @override
  State<DailyRecommendationListView> createState() =>
      _DailyRecommendationListViewState();
}

class _DailyRecommendationListViewState
    extends State<DailyRecommendationListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            height: 10.h,
            width: 20.w,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffD2DFFF)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, bottom: 15),
                      child: SvgPicture.asset("assets/images/rainy-daily.svg"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Spacer(),
                        Text("Tuesday",
                            style: TextStyle(
                                color: Color(0xff201C1C),
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 1.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text("Thunderstorm",
                              style: TextStyle(color: Color(0xff201C1C))),
                        ),
                        Spacer(),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("19º C",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff201C1C))),
                      SizedBox(width: 4.w),
                      Icon(Icons.arrow_right,
                          size: 25, color: Color(0xff201C1C))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
