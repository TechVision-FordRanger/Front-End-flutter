import 'package:flutter/material.dart';
import 'dart:async';

class LoadingScreen extends StatefulWidget {
  static const String routeName = '/LoadingScreen';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Aguarde 2 segundos (2000 milissegundos) antes de navegar para a próxima tela
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, NextScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003478),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_ford_azul_escuro.png'),
            SizedBox(height: 16.0), // Espaçamento
            Image.asset('assets/images/ranger_picture.png'), // Nova imagem
            SizedBox(height: 16.0), // Espaçamento
            CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  static const String routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Next Screen!'),
      ),
    );
  }
}
