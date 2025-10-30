import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/shedule_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SheduleSection extends StatelessWidget {
  const SheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleTasksData();
    return Column(
      children: [
        const Text(
          "Scheduled",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
          ),
        ),
        const SizedBox(height: 12),

        //show shedule data
        for (var index = 0; index < data.scheduled.length; index++)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: CustomCard(
              color: limeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.scheduled[index].title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        data.scheduled[index].date,
                        style: const TextStyle(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.more, color: greyColor),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
