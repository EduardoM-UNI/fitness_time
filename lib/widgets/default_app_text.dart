import 'package:flutter/material.dart';

class DefaultAppText extends StatelessWidget {
  String text;
  TextStyle styles;

  DefaultAppText({super.key, required this.text, required this.styles});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: styles,
    );
  }
}
