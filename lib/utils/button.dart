import 'package:flutter/material.dart';
import "package:quizapp/utils/colors.dart";
import 'package:quizapp/question_screen.dart';

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

/////////////////////////////////////////////////////////////////////////
class OptionButton extends StatefulWidget {
  final String optionAlpha;
  final String optionText;
  final bool isSelected;
  final void Function() updateOptions;

  const OptionButton(
    this.optionAlpha,
    this.optionText,
    this.isSelected,
    this.updateOptions, {
    super.key,
  });

  @override
  State<OptionButton> createState() {
    return _OptionButtonState();
  }
}

class _OptionButtonState extends State<OptionButton> {
  void selectedOption() {
    currentSelectedOption = widget.optionAlpha;
    setState(() {
      widget.updateOptions();
    });
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        SizedBox(
          height: 54,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              backgroundColor: widget.isSelected
                  ? yellowColor
                  : yellowOpacityColor,
              shadowColor: Colors.transparent, // removes shadow
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: selectedOption,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  widget.optionAlpha,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(width: 18),
                Container(
                  width: 2,
                  height: 54,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Expanded(
                  child: Text(
                    widget.optionText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
