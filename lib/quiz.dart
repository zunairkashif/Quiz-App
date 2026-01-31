import "package:flutter/material.dart";
import "package:quizapp/start_screen.dart";
import "package:quizapp/question_screen.dart";
import "package:quizapp/utils/colors.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String screen = "start-screen";

  void changeState() {
    setState(() {
      screen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentState = StartScreen(changeState);

    if (screen == "question-screen") {
      currentState = const Question();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: bgColor,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentState,
        ),
      ),
    );
  }
}
