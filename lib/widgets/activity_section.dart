import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/health_details_data.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    final healthModelData = HealthDetails();
    final bool isMobile = Responsive.isMobile(context);

    return GridView.builder(
      shrinkWrap: true,
      itemCount: healthModelData.healthDetails.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                healthModelData.healthDetails[index].icon,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: Text(
                  healthModelData.healthDetails[index].value,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                healthModelData.healthDetails[index].title,
                style: TextStyle(
                  color: greyColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
