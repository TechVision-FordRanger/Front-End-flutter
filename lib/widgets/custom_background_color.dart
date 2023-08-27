import 'package:flutter/material.dart';

class CustomBackgroundColor extends StatelessWidget {
  final Widget? child; // Para adicionar outros widgets dentro do CustomBackground, se necessário

  const CustomBackgroundColor({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 2, 116),
      child: child,
    );
  }
}
