import 'package:fitness_time/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DefaultHomeCard extends StatelessWidget {
  final String textDate;
  final String textKms;

  const DefaultHomeCard({
    super.key,
    required this.textDate,
    required this.textKms,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 375,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: AppStyles.whiteColor,
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 60,
                  height: 50,
                  child: Icon(
                    Icons.run_circle_outlined,
                    size: 50,
                    color: AppStyles.heliotropeColor,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Running",
                        style: AppStyles.activityTypeTitle,
                      ),
                      Text(
                        textDate,
                        style: AppStyles.otherTitle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                textKms,
                style: AppStyles.distanceTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
