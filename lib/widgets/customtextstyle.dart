import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double mockupWidth = 412.0;
const double mockupHeight = 732.0;

//HEADER FONT
class TextHeader extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final EdgeInsets margin;
  final TextAlign textAlign;

  const TextHeader({
    Key? key,
    required this.text,
    this.fontSize = 36.0,
    this.fontWeight = FontWeight.w700,
    this.color = const Color(0xFF750EEB),
    this.textAlign = TextAlign.center,
    this.margin = const EdgeInsets.all(12.0)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double widthScale = screenWidth / mockupWidth;
    final double heightScale = screenHeight / mockupHeight;

    return Container(
      margin: margin,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: fontSize * heightScale,
            fontWeight: fontWeight,
            color: color,
          )
        ),
        textAlign: textAlign,
      ),
    );
  }
}


//PARAGRAPH FONT
class TextParag extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const TextParag({
    Key? key,
    required this.text,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.w500,
    this.color = Colors.black54,
    this.textAlign = TextAlign.left
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double widthScale = screenWidth / mockupWidth;
    final double heightScale = screenHeight / mockupHeight;

    return Container(
      child: Text(
        text,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: fontSize * heightScale,
              fontWeight: fontWeight,
              color: color,
            )
        ),
        textAlign: textAlign,
      ),
    );
  }
}




/*
    return Container(
      margin: margin,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize * heightScale,
          fontWeight: fontWeight,
          color: color,
        ),
        textAlign: textAlign,
      ),
    );
 */