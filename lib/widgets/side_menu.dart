import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final sideMenuData = SideMenuData();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: ListView.builder(
        itemCount: sideMenuData.sideMenu.length,
        itemBuilder: (context, index) {
          return sideMenuList(sideMenuData, index);
        },
      ),
    );
  }

  Widget sideMenuList(SideMenuData sideMenuData, int index) {
    return Row(
      children: [
        Icon(sideMenuData.sideMenu[index].icon, color: greyColor),
        Text(
          sideMenuData.sideMenu[index].title,
          style: TextStyle(color: greyColor),
        ),
      ],
    );
  }
}
