import 'package:fitness_time/screens/profile/profile_page.dart';
import 'package:fitness_time/utils/app_styles.dart';
import 'package:fitness_time/utils/app_urls.dart';
import 'package:fitness_time/widgets/default_app_text.dart';
import 'package:fitness_time/widgets/default_home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
        appBar: AppBar(
            title: const Text("Fitness Time"),
            leading: const Icon(
              Icons.menu,
            ),
            actions: [
              IconButton(
                icon: _circularImage(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
              ),
            ]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: localizations.init,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: localizations.search,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart),
              label: localizations.store,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20.0),
              child: DefaultAppText(
                text: localizations.name,
                styles: AppStyles.bigTitle,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: _textJustificat(localizations.tip),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: _textLink(localizations.moredetails),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: DefaultAppText(
                text: localizations.lastactivities,
                styles: AppStyles.mediumTitle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: DefaultHomeCard(
                  textDate: localizations.date01,
                  textKms: localizations.distance01),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: DefaultHomeCard(
                  textDate: localizations.date02,
                  textKms: localizations.distance02),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: DefaultHomeCard(
                  textDate: localizations.date03,
                  textKms: localizations.distance03),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 150, right: 100),
              child: Column(
                children: [
                  _circularProgress(),
                  const SizedBox(height: 5),
                  DefaultAppText(
                    text: localizations.mensualobject,
                    styles: AppStyles.otherTitle,
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}

Widget _circularImage() {
  return const Hero(
    tag: "Image",
    child: CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(AppUrls.avatarImage),
    ),
  );
}

Widget _textJustificat(dynamic localizations) {
  return Text(
    localizations,
    style: AppStyles.otherTitle,
  );
}

Widget _textLink(dynamic localizations) {
  return Text(
    localizations,
    style: const TextStyle(
      color: Colors.blue,
      decoration: TextDecoration.underline,
      decorationColor: Colors.blue,
    ),
  );
}

Widget _circularProgress() {
  return CircularPercentIndicator(
    radius: 50.0,
    lineWidth: 8.0,
    percent: 0.65,
    center: const Text("65%"),
    progressColor: AppStyles.chrysterBlueColor,
  );
}
