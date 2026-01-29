import "package:flutter/material.dart";
import "package:quizapp/utils/colors.dart";

class Heading extends StatelessWidget {
  const Heading(this.text, this.size, {super.key});
  final String text;
  final double size;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
