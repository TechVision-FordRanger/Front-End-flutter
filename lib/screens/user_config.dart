import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/default_text.dart';

class UserConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundColor(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 35, 20, 22),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                width: 100, child: Image.asset('assets/images/perfil.png')),
            Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultText(
                      text: 'Configurações',
                      align: TextAlign.end,
                      weight: FontWeight.w700,
                      fontSize: 32,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: DefaultText(
                        text: 'Petter Parker',
                        align: TextAlign.end,
                        fontSize: 12,
                        weight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: DefaultText(
                        text: 'Ranger limited 2024',
                        align: TextAlign.end,
                        fontSize: 12,
                        weight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: DefaultText(
                        text: 'Placa GOL1234',
                        align: TextAlign.end,
                        fontSize: 12,
                        weight: FontWeight.w700),
                  ),
                ]))
          ]),
        ),
        Container(
          child: Center(
            child: DefaultText(
              text: 'Alterar senha ou email',
              align: TextAlign.center,
              fontSize: 20,
              weight: FontWeight.w700,
            ),
          ),
          color: Color(0xFF022655),
          width: double.infinity,
          height: 69,
        ),
        Container(
          child: Center(
            child: DefaultText(
              text: 'Gerenciamento de Notificações',
              align: TextAlign.center,
              fontSize: 20,
              weight: FontWeight.w700,
            ),
          ),
          color: Color.fromARGB(0, 2, 38, 85),
          width: double.infinity,
          height: 69,
        ),
        Container(
          child: Center(
            child: DefaultText(
              text: 'Termos de Uso',
              align: TextAlign.center,
              fontSize: 20,
              weight: FontWeight.w700,
            ),
          ),
          color: Color(0xFF022655),
          width: double.infinity,
          height: 69,
        ),
        Container(
          child: Center(
            child: DefaultText(
              text: 'Log Out',
              align: TextAlign.center,
              fontSize: 20,
              weight: FontWeight.w700,
            ),
          ),
          color: Color.fromARGB(0, 2, 38, 85),
          width: double.infinity,
          height: 69,
        ),
        Container(
          child: Center(
            child: DefaultText(
              text: '',
              align: TextAlign.center,
              fontSize: 20,
              weight: FontWeight.w700,
            ),
          ),
          color: Color.fromARGB(255, 2, 38, 85),
          width: double.infinity,
          height: 69,
        )
      ],
    )));
  }
}
