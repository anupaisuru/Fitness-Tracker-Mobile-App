import 'package:fitness_tracker/constants/constants.dart';
import 'package:fitness_tracker/data/pie_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartCard extends StatelessWidget {
  const PieChartCard({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: PieChartSampleData().pieChartInfoData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: kDefaultPadding),
                Text(
                  "70%",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 0.5,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "of 100%",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Colors.white.withValues(alpha: 0.5),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
