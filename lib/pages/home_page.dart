import 'package:fitness_tracker/widgets/dashboard.dart';
import 'package:fitness_tracker/widgets/side_menu.dart';
import 'package:fitness_tracker/widgets/summary_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            //side menu
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),

            //dashboard
            Expanded(
              flex: 7,
              child: SizedBox(
                child: Dashboard(),
              ),
            ),

            //summary section
            Expanded(
              flex: 3,
              child: SizedBox(
                child: SummarySection(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
