import 'package:fitness_tracker/widgets/activity_section.dart';
import 'package:fitness_tracker/widgets/header_widget.dart';
import 'package:fitness_tracker/widgets/line_chart.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: 15),
            HeaderWidget(),
            SizedBox(height: 15),
            ActivitySection(),
            SizedBox(height: 15),
            LineChartcard(),
          ],
        ),
      ),
    );
  }
}
