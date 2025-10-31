import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);

    return Row(
      children: [
        if (!isDesktop)
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.menu, color: greyColor, size: 25),
            ),
          ),
        Expanded(
          child: TextField(
            style: TextStyle(color: greyColor),
            decoration: InputDecoration(
              filled: true,
              fillColor: cardBgColor,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              labelStyle: TextStyle(color: greyColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              hintText: "Search",
              hintStyle: TextStyle(color: greyColor),
              prefixIcon: Icon(Icons.search, color: greyColor, size: 21),
            ),
          ),
        ),
        //show profile icon for view summary
        if (!isDesktop)
          InkWell(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(100),
                child: Image.asset("assets/images/avatar.jpg", width: 40),
              ),
            ),
          ),
      ],
    );
  }
}
