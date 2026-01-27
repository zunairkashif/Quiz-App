import 'package:flutter/material.dart';
import "package:quizapp/utils/colors.dart";
import "package:quizapp/utils/text_style.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: AssetImage("assets/images/quiz-logo.png"), width: 300),
          SizedBox(height: 30),
          Heading("Quiz your brain."),
          Heading("Level up your mind."),
          SizedBox(height: 130),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              side: BorderSide(
                width: 6,
                color: const Color.fromARGB(255, 214, 194, 106),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(14),
              ),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 38),
              backgroundColor: button_color,
              foregroundColor: black_color,
              textStyle: TextStyle(fontSize: 20),
            ),
            child: Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
