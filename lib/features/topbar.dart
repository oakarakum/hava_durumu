import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/images/location-icon.svg"),
            SizedBox(width: 10),
            DropdownButton(
                isDense: true,
                underline: SizedBox(),
                value: widget.dropdownvalue,
                iconEnabledColor: Color(0xff2E3A59),
                icon: SvgPicture.asset("assets/images/arrow_down.svg"),
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
        SvgPicture.asset("assets/images/search-icon.svg")
      ],
    );
  }
}
