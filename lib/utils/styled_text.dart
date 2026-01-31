import "package:flutter/material.dart";
import "package:quizapp/utils/colors.dart";
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  const Heading(this.text, this.size, {super.key});
  final String text;
  final double size;
  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: textColor,
        fontSize: size,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class Warning extends StatelessWidget {
  const Warning(this.text, this.size, this.isTransparent, {super.key});
  final String text;
  final double size;
  final bool isTransparent;
  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: isTransparent ? Colors.red : Colors.transparent,
        fontSize: size,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
