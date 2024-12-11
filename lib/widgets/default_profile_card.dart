import 'package:fitness_time/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DefaultProfileCard extends StatelessWidget {
  IconData iconData;
  String textUnit;
  String textValue;
  double cardWith;

  DefaultProfileCard({
    super.key,
    required this.iconData,
    required this.textUnit,
    required this.textValue,
    required this.cardWith,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: cardWith,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppStyles.heliotropeColor,
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            Text(textUnit, style: AppStyles.otherTitle),
            Text(textValue, style: AppStyles.activityTypeTitle),
          ],
        ),
      ),
    );
  }
}
