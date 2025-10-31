import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/bar_graph_data.dart';
import 'package:fitness_tracker/models/graph_model.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGrphdata = BarGraphData();
    final bool isMobile = Responsive.isMobile(context);

    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: barGrphdata.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 15,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  barGrphdata.data[index].label,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              //bar grph
              SizedBox(height: 12),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      points: barGrphdata.data[index].graph,
                      color: barGrphdata.data[index].color,
                    ),
                    //remove the border in the bar graph
                    borderData: FlBorderData(border: const Border()),

                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),

                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),

                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),

                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                barGrphdata.label[value.toInt()],
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map(
          (point) => BarChartGroupData(
            //for the x axis points  , as the bar graph will do not have y valuse ( this shows bars on  axis)
            x: point.x.toInt(),

            // the bars  on the x axis
            barRods: [
              BarChartRodData(
                // this will renders the bars fromY to toY ( bottom is formY and the top is the toY values here   if twe do not explicitly say the bottomY it wii set to 0  )
                toY: point.y,

                //bar width
                width: 20,

                //if the height of the y is greater than 4 , show the opacity to 100%
                color: color.withValues(alpha: point.y.toInt() > 4 ? 1 : 0.4),

                //radius of the to vertices
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
