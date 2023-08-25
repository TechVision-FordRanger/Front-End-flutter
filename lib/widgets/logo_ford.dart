import 'package:flutter/material.dart';

class LogoFord extends StatelessWidget {
  final double width;
  final double height;

  LogoFord({this.width = 100.0, this.height = 100.0});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo_ford_azul_escuro.png', 
      width: width,
      height: height,
    );
  }
}
//Esse widget é a imagem principal da ford, para usar ele basta colocar o seguinte trecho no seu codigo: 
//LogoFord(width: xxx, height: xxx)
