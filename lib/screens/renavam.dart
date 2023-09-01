// Screens/CustomScreen.dart

import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/back_button.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_registration.dart';
import 'package:ford_ranger/widgets/next_button.dart';

TextEditingController _renavamTextController = TextEditingController();

class Renavam extends StatelessWidget {
  static const routeName = '/renavam'; // Definindo um nome para a rota

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackgroundColor(),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1, // Ajustando para 10%
              ),
              Container(
                color: Colors.lightBlue,
                height: MediaQuery.of(context).size.height * 0.9, // Ajustando para 90%
                child: Padding(
                  padding: const EdgeInsets.all(16.0), // Espaçamento geral dentro do container azul
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Seu texto aqui", 
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20.0), // Espaçamento entre o texto e a imagem
                      Image.asset('assets/images/Renavam.png'),
                      SizedBox(height: 20.0), // Espaçamento entre a imagem e o input
                      CustomInputRegistration(
                        controller: _renavamTextController,
                        hintText: '00000000000',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FordBackButton(onPressed: () {
              // Função para voltar
            }),
            NextButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
