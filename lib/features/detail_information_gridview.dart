// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailInfoGridview extends StatefulWidget {
  const DetailInfoGridview({super.key});

  @override
  State<DetailInfoGridview> createState() => _DetailInfoGridviewState();
}

class _DetailInfoGridviewState extends State<DetailInfoGridview> {
  
  List<String> detailGridIcon =[
    "assets/images/humidity.svg",
    "assets/images/air_pressure.svg",
    "assets/images/wind_velocity.svg",
    "assets/images/fog.svg"


  ];

  List<String> detailGridNum =[
    "86%",
    "940 hPa",
    "1 km/h",
    "14%"


  ];

  List<String> detailGridInfo =[
    "Humidity",
    "air Pressure",
    "Wind Velocity",
    "Fog"


  ];  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 30.h,
        width: 100.w,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
            itemCount: detailGridIcon.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2.h,
              crossAxisSpacing: 5.w,
              mainAxisExtent: 12.h,
            ),
            itemBuilder: ((context, index) {
              return Container(
                height: 5.h,
                width: 10.w,
                decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.only(left: 6.w, top: 3.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.5.h, right: 5.w),
                        child: SvgPicture.asset(detailGridIcon[index]),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(detailGridNum[index],
                              style: TextStyle(
                                  color: Color(0xff201C1C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20)),
                          SizedBox(height: 1.2.h),
                          Text(detailGridInfo[index],
                              style: TextStyle(
                                  color: Color(0xff494343),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16))
                        ],
                      )
                    ],
                  ),
                ),
              );
            })));
  }
}
