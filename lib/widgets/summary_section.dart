import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/pie_chart.dart';
import 'package:fitness_tracker/widgets/shedule_section.dart';
import 'package:fitness_tracker/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class SummarySection extends StatefulWidget {
  const SummarySection({super.key});

  @override
  State<SummarySection> createState() => _SummarySectionState();
}

class _SummarySectionState extends State<SummarySection> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Container(
      decoration: BoxDecoration(color: !isDesktop ? cardBgColor : null),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            PieChartCard(),
            SizedBox(height: 10),
            Text(
              "summary",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: greyColor,
              ),
            ),
            SizedBox(height: 16),
            SummaryDetails(),
            SizedBox(height: 16),
            SheduleSection(),
          ],
        ),
      ),
    );
  }
}
