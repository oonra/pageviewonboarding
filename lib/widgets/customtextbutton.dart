import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String displayText;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final VoidCallback onPressed;

  const CustomTextButton({
    Key? key,
    required this.displayText,
    this.fontSize = 23.0,
    this.fontWeight = FontWeight.w800,
    this.color = const Color.fromRGBO(117, 14, 235, 0.35),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        displayText,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color
        ),
      ),
    );
  }
}
