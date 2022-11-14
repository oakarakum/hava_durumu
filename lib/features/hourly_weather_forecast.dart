// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HourlyWeatherForecast extends StatefulWidget {
  const HourlyWeatherForecast({super.key});

  @override
  State<HourlyWeatherForecast> createState() => _HourlyWeatherForecastState();
}

class _HourlyWeatherForecastState extends State<HourlyWeatherForecast> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: ((context, index) {
            return Container(
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
                      child: SvgPicture.asset("assets/images/storm_hourly.svg",
                          height: 4.5.h, width: 3.w),
                    ),
                    Positioned(
                      top: 65,
                      left: 28,
                      child: Text(
                        "20º",
                        style: TextStyle(
                            color: Color(0xff201C1C),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: 88,
                      left: 12,
                      child: Text(
                        "4.00 PM",
                        style: TextStyle(
                            color: Color(0xff494343),
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ));
          })),
    );
  }
}
