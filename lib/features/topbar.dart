// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Topbar extends StatefulWidget {
  Topbar({super.key});

  String dropdownvalue = "Tanjungsiang,Subang";
  var items = ["Tanjungsiang,Subang", "Roma", "Ankara", "Atina", "Paris"];

  @override
  State<Topbar> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return FadeInDownBig(
      delay: Duration(milliseconds: 2500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeInDownBig(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //FadeInImage.assetNetwork(placeholder: "adad", image: SvgPicture.asset("assets/images/location-icon.svg"))
                SvgPicture.asset("assets/images/location-icon.svg"),
                //SvgPicture.asset("assets/images/location-icon.svg"),
                SizedBox(width: 2.h),
                DropdownButton(
                    isDense: true,
                    underline: SizedBox(),
                    value: widget.dropdownvalue,
                    iconEnabledColor: Color(0xff2E3A59),
                    icon: Padding(
                      padding: EdgeInsets.only(left: 1.w),
                      child: SvgPicture.asset("assets/images/arrow_down.svg"),
                    ),
                    items: widget.items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(color: Color(0xff201C1C)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        widget.dropdownvalue = newValue!;
                      });
                    }),
              ],
            ),
          ),
          SvgPicture.asset("assets/images/search-icon.svg")
        ],
      ),
    );
  }
}
