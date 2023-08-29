import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  final Widget? child; // Para adicionar outros widgets dentro do CustomBackground, se necessário

  HomeBackground({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 2, 116), // Cor de fundo
        image: DecorationImage(
          image: AssetImage('assets/images/bg-home.png'), // Caminho para sua imagem
          fit: BoxFit.cover, // Isso fará com que a imagem cubra todo o container
        ),
      ),
      child: child,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
