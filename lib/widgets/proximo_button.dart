import 'package:flutter/material.dart';

class ProximoButton extends StatelessWidget {
  final Function onPressed;

  ProximoButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: 50.0, vertical: 16.0)), // Maior padding
      ),
      child: Text('Próximo',
          style: TextStyle(fontSize: 18.0)), // Maior tamanho de fonte
    );
  }
}
