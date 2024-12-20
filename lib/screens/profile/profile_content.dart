import 'package:fitness_time/utils/app_styles.dart';
import 'package:fitness_time/utils/app_urls.dart';
import 'package:fitness_time/widgets/default_app_text.dart';
import 'package:fitness_time/widgets/default_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.userdata),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            _circularImage(),
            const SizedBox(height: 25),
            const DefaultAppText(
              text: "Antonia Font",
              styles: AppStyles.bigTitle,
            ),
            DefaultAppText(
              text: localizations.date04,
              styles: AppStyles.otherTitle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const DefaultProfileCard(
                  iconData: Icons.access_alarm,
                  textUnit: "Time",
                  textValue: "2h 45'",
                  cardWith: 75,
                ),
                const DefaultProfileCard(
                  iconData: Icons.point_of_sale,
                  textUnit: "Km",
                  textValue: "212,4",
                  cardWith: 65,
                ),
                DefaultProfileCard(
                  iconData: Icons.home,
                  textUnit: localizations.activities,
                  textValue: "42",
                  cardWith: 90,
                ),
              ],
            ),
            const SizedBox(height: 30),
            _sliderHeigh(localizations.height),
            _sliderWeight(localizations.weight),
          ],
        ),
      ),
    );
  }
}

Widget _circularImage() {
  return const Hero(
    tag: "Image",
    child: CircleAvatar(
      radius: 100,
      backgroundImage: NetworkImage(AppUrls.avatarImage),
    ),
  );
}

Widget _sliderHeigh(dynamic localizations) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        localizations,
        style: AppStyles.otherTitle,
      ),
      const Slider(
        value: 30,
        min: 0,
        max: 100,
        onChanged: onChanged,
        activeColor: AppStyles.heliotropeColor,
        inactiveColor: AppStyles.greyColor02,
        thumbColor: AppStyles.heliotropeColor,
      ),
      const Text(
        "150 cm",
        style: AppStyles.otherTitle,
      )
    ],
  );
}

Widget _sliderWeight(dynamic localizations) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        localizations,
        style: AppStyles.otherTitle,
      ),
      const Slider(
        value: 15,
        min: 0,
        max: 100,
        onChanged: onChanged,
        activeColor: AppStyles.heliotropeColor,
        inactiveColor: AppStyles.greyColor02,
        thumbColor: AppStyles.heliotropeColor,
      ),
      const Text(
        "55 kg",
        style: AppStyles.otherTitle,
      )
    ],
  );
}

void onChanged(double value) {}
