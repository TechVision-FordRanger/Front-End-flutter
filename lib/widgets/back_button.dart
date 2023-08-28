import 'package:flutter/material.dart';

class FordBackButton extends StatelessWidget {
  final Function onPressed;

  FordBackButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        width: 60.0,  // Ajuste conforme necessário
        height: 60.0, // Ajuste conforme necessário
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back_button.png'),
            fit: BoxFit.contain, // Isso garantirá que a imagem se ajuste ao tamanho do container.
          ),
        ),
      ),
    );
  }
}
