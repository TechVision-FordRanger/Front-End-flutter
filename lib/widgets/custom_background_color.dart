import 'package:flutter/material.dart';

class CustomBackgroundColor extends StatelessWidget {
  final Widget? child; // Para adicionar outros widgets dentro do CustomBackground, se necessário

  CustomBackgroundColor({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 2, 116),
      child: child,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
