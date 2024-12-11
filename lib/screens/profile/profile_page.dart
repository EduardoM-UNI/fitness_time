import 'package:fitness_time/screens/profile/profile_content.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ProfileContent(),
      ),
    );
  }
}
