import 'package:flutter/material.dart';
import "package:quizapp/utils/styled_text.dart";
import "package:quizapp/utils/button.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: AssetImage("assets/images/quiz-logo.png"), width: 300),
          SizedBox(height: 30),
          Heading("Quiz your brain.", 24),
          Heading("Level up your mind.", 24),
          SizedBox(height: 130),
          Button("Start Quiz", startQuiz),
        ],
      ),
    );
  }
}
