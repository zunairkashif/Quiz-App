import 'package:flutter/material.dart';
import "package:quizapp/utils/colors.dart";

class Button extends StatelessWidget {
  const Button(this.text, this.btnFunction, {super.key});

  final void Function() btnFunction;
  final String text;

  @override
  Widget build(context) {
    return TextButton(
      onPressed: btnFunction,
      style: TextButton.styleFrom(
        side: BorderSide(
          width: 6,
          color: const Color.fromARGB(255, 214, 194, 106),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 38),
        backgroundColor: yellowColor,
        foregroundColor: blackColor,
        textStyle: TextStyle(fontSize: 20),
      ),
      child: Text(text),
    );
  }
}
