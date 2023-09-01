import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  String text;
  double fontSize;
  FontWeight weight;
  Color color;
  TextAlign align;

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
      style: TextStyle(color: color, fontWeight: weight, fontSize: fontSize),
      textAlign: align,
    );
  }
}
