import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight weight;
  final Color color;
  final TextAlign align;

  DefaultText(
      {super.key,
      this.text = '',
      this.fontSize = 16,
      this.weight = FontWeight.w700,
      this.color = Colors.white,
      this.align = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Epilogue',
        color: color,
        fontWeight: weight,
        fontSize: fontSize,
      ),
      textAlign: align,
    );
  }
}
