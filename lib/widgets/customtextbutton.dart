import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double mockupWidth = 412.0;
const double mockupHeight = 732.0;

class CustomTextButton extends StatelessWidget {
  final String displayText;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final VoidCallback onPressed;

  const CustomTextButton({
    Key? key,
    required this.displayText,
    this.fontSize = 22.0,
    this.fontWeight = FontWeight.w700,
    this.color = const Color.fromRGBO(117, 14, 235, 0.35),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double widthScale = screenWidth / mockupWidth;
    final double heightScale = screenHeight / mockupHeight;

    return TextButton(
      onPressed: onPressed,
      child: Text(
        displayText,
        style: GoogleFonts.poppins(
          fontSize: fontSize * heightScale,
          fontWeight: fontWeight,
          color: color
        ),
      ),
    );
  }
}
