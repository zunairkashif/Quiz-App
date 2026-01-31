import "package:flutter/material.dart";
import 'package:quizapp/utils/styled_text.dart';
import 'package:quizapp/utils/button.dart';
import 'package:quizapp/data/question_data.dart';

class CurrentSelectedOption {
  CurrentSelectedOption(this.option);
  String option;
}

class Question extends StatefulWidget {
  const Question({super.key});
  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  var currentQuestionNumber = 0;
  List<Widget> currentOptions = [];
  CurrentSelectedOption currentSelectedOption = CurrentSelectedOption('');
  bool selectedBeforeNext = false;

  void nextQuestion() {
    if (currentSelectedOption.option == '') {
      selectedBeforeNext = true;
      setState(() {});
    } else {
      setState(() {
        selectedBeforeNext = false;
        currentSelectedOption.option = '';
        currentQuestionNumber++;
      });
    }
  }

  void updateOptionsBackgroundColor() => setState(() {});

  @override
  Widget build(context) {
    currentOptions.clear();
    int i = 0;

    for (String option in trickyQuestions[currentQuestionNumber].options) {
      currentOptions.add(
        OptionButton(
          optionAlphas[i],
          option,
          currentSelectedOption,
          (currentSelectedOption.option == optionAlphas[i]),
          updateOptionsBackgroundColor,
        ),
      );
      i++;
    }

    return Center(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Warning("Pick an option first!", 16, selectedBeforeNext),
            SizedBox(height: 20),
            Heading(trickyQuestions[currentQuestionNumber].question, 20),
            SizedBox(height: 50),
            Column(mainAxisSize: MainAxisSize.min, children: currentOptions),
            SizedBox(height: 50 - 16),
            Button("Next", nextQuestion),
            SizedBox(height: 50),
            Heading(
              "${currentQuestionNumber + 1}/${trickyQuestions.length}",
              18,
            ),
          ],
        ),
      ),
    );
  }
}
