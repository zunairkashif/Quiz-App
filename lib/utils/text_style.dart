import "package:flutter/material.dart";
import "package:quizapp/utils/colors.dart";

class Heading extends StatelessWidget {
  const Heading(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: text_color,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
