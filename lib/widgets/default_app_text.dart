import 'package:flutter/material.dart';

class DefaultAppText extends StatelessWidget {
  final String text;
  final TextStyle styles;

  const DefaultAppText({super.key, required this.text, required this.styles});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: styles,
    );
  }
}
