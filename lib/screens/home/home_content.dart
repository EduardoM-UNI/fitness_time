import 'package:fitness_time/screens/profile/profile_content.dart';
import 'package:fitness_time/utils/app_styles.dart';
import 'package:fitness_time/utils/app_urls.dart';
import 'package:fitness_time/widgets/default_app_text.dart';
import 'package:fitness_time/widgets/default_home_card.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
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
                      builder: (context) => const ProfileContent(),
                    ),
                  );
                },
              ),
            ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inici",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Cercar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20.0),
              child: DefaultAppText(
                text: "Hola Antònia,",
                styles: AppStyles.bigTitle,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: _textJustificat(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: _textLink(),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: DefaultAppText(
                text: "Darreres activitats",
                styles: AppStyles.mediumTitle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child:
                  DefaultHomeCard(textDate: "Ayer, 18:20", textKms: "7,300 km"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: DefaultHomeCard(
                  textDate: "15 Sept 2024, 21:45", textKms: "6,550 km"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: DefaultHomeCard(
                  textDate: "10 Sept 2024, 21:33", textKms: "7,100 km"),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 150, right: 100),
              child: Column(
                children: [
                  _circularProgress(),
                  const DefaultAppText(
                    text: "Objetiu mensual",
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

Widget _textJustificat() {
  return const Text(
    "Recorda beure aigua regularment al llarg del dia per "
    "mantenir el teu cos hidratat i millorar el teu rendiment fisic i mental.",
    style: AppStyles.otherTitle,
  );
}

Widget _textLink() {
  return const Text(
    "Mes details",
    style: TextStyle(
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
