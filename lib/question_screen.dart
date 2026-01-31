import "package:flutter/material.dart";
import 'package:quizapp/utils/styled_text.dart';
import 'package:quizapp/utils/button.dart';
import 'package:quizapp/data/question_data.dart';

var questionNumber = 0;
const List<String> optionAlphas = ['A', 'B', 'C', 'D'];
List<Widget> options = [];
var currentSelectedOption = "";

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  void nextQuestion() {
    setState(() {
      questionNumber++;
    });
  }

  void updateOptions() {
    setState(() {});
  }

  @override
  Widget build(context) {
    int lengthOfQuestions = trickyQuestions.length;
    int j = 0;
    options.clear();

    for (String option in trickyQuestions[questionNumber].options) {
      options.add(
        OptionButton(
          optionAlphas[j],
          option,
          (currentSelectedOption == optionAlphas[j]),
          updateOptions,
        ),
      );
      j++;
    }

    return Center(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Heading(trickyQuestions[questionNumber].question, 20),
            SizedBox(height: 50),
            Column(mainAxisSize: MainAxisSize.min, children: options),
            SizedBox(height: 50 - 16),
            Button("Next", nextQuestion),
            SizedBox(height: 50),
            Heading("${questionNumber + 1}/${lengthOfQuestions}", 18),
          ],
        ),
      ),
    );
  }
}
