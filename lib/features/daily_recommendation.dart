// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DailyRecommendation extends StatefulWidget {
  const DailyRecommendation({super.key});

  @override
  State<DailyRecommendation> createState() => _DailyRecommendationState();
}

class _DailyRecommendationState extends State<DailyRecommendation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/pink_rectangle.png"),fit: BoxFit.cover),        
                   borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          SizedBox(width: 3.w),
          SvgPicture.asset("assets/images/daily_rec.svg"),
          SizedBox(width: 5.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tomorrow's weather is likely it will rain \nin the afternoon",
                style: TextStyle(
                    color: Color(0xff201C1C), fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.only(right: 11.w, top: 0.2.w),
                child: Text("Don't forget to bring an umbrella",
                    style: TextStyle(
                        color: Color(0xff494343), fontWeight: FontWeight.w400)),
              )
            ],
          )
        ],
      ),
    );
  }
}
