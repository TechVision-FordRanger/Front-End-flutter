import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/default_text.dart';
import 'package:ford_ranger/widgets/home_background.dart';

class BetterJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeBackground(
        child: SingleChildScrollView(
      child: Column(
        children: [
          DefaultText(text: 'Better Job'),
          DefaultText(text: 'Botões de Emergência'),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Image.asset(
                        'assets/images/alert.png',
                      ),
                      DefaultText(text: 'Emergência')
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      Image.asset(
                        'assets/images/police.png',
                      ),
                      DefaultText(text: 'Ligar para autoridade')
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      Image.asset(
                        'assets/images/radio-icon.png',
                      ),
                      DefaultText(text: 'Sinal')
                    ],
                  )),
                ],
              )),
          DefaultText(text: 'Suas rotas'),
          Container(
              child: Image.asset(
            'assets/images/map.png',
          )),
          DefaultText(text: 'Organize suas cargas')
        ],
      ),
    ));
  }
}
