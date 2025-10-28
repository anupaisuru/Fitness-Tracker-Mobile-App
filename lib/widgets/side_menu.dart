import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  //index tracker
  int selectedIndex = 0;

  final sideMenuData = SideMenuData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Container(
        color: backgroundColor,
        child: ListView.builder(
          itemCount: sideMenuData.sideMenu.length,
          itemBuilder: (context, index) {
            return sideMenuList(sideMenuData, index);
          },
        ),
      ),
    );
  }

  Widget sideMenuList(SideMenuData sideMenuData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: selectedIndex == index ? sectionColor : Colors.transparent,
        ),
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                sideMenuData.sideMenu[index].icon,
                color: selectedIndex == index ? blackColor : greyColor,
              ),
              SizedBox(width: 10),
              Text(
                sideMenuData.sideMenu[index].title,
                style: TextStyle(
                  color: selectedIndex == index ? blackColor : greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
