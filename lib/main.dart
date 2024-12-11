import 'package:fitness_time/screens/profile/profile_content.dart';
import 'package:fitness_time/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppStyles.persianPinkColor,
          foregroundColor: AppStyles.whiteColor,
          centerTitle: true,
        ),
      ),
      home: const ProfileContent(),
      debugShowCheckedModeBanner: false,
    );
  }
}
