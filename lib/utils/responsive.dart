import 'package:flutter/material.dart';

class Responsive {
  //method to check weather the device is a mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  //method to check weather the device is a mobile
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  //method to check weather the device is desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
