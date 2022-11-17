// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hava_durumu/core/app_constant.dart';
import 'package:hava_durumu/pages/weather_detail_screen.dart';
import 'package:hava_durumu/providers/daily_bottom_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../models/current_weather_response.dart';

class DailyRecommendationListView extends StatefulWidget {
  const DailyRecommendationListView({super.key});

  @override
  State<DailyRecommendationListView> createState() =>
      _DailyRecommendationListViewState();
}

class _DailyRecommendationListViewState
    extends State<DailyRecommendationListView> {
  DailyBottomProvider? dailyBottomProviderr;
  @override
  void initState() {
    super.initState();
    dailyBottomProviderr =
        Provider.of<DailyBottomProvider>(context, listen: false);
    dailyBottomProviderr!.getDailyBottomData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, DailyBottomProvider value, widget) {
      return SizedBox(
        height: 40.h,
        child: ListView.builder(
          itemCount: 7,
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
                        child:
                            SvgPicture.asset("assets/images/rainy-daily.svg"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(left: 9.w),
                            child: Text("${value.dayList![index]["Day"]}",
                                style: TextStyle(
                                    color: Color(0xff201C1C),
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(height: 1.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Text(
                                "${value.dailyBottomResponse.list![index].weather![0].description.toString().split(".").last}",
                                //value.dailyBottomResponse.list![index].weather![0].description.toString(), çalışmayan örnek
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
                        Text(
                            "${value.dailyBottomResponse.list![index].main?.temp}ºC",
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
    }));
  }
}
