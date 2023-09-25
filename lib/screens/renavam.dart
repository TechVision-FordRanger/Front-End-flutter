import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/registration.dart';
import 'package:ford_ranger/widgets/back_button.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_registration.dart';
import 'package:ford_ranger/widgets/default_text.dart';

TextEditingController _renavamTextController = TextEditingController();

class Renavam extends StatelessWidget {
  static const routeName = '/renavam';

  bool isValidRenavam(String renavam) {
    return renavam.length == 11 && int.tryParse(renavam) != null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomBackgroundColor(),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05 + 30.0,
                color: const Color(0xFF003478), // Valores alpha ajustados
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.95 - 30.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF13488e), // Valores alpha ajustados
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(
                        text:
                            "Para seguirmos, precisamos do Renavam da sua Ranger, que pode ser contrado no documento do seu veículo",
                        fontSize: 22,
                        weight: FontWeight.normal,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 20.0),
                      Image.asset('assets/images/Renavam.png'),
                      const SizedBox(height: 20.0),
                      CustomInputRegistration(
                        controller: _renavamTextController,
                        hintText: '00000000000',
                        prefixIcon: const Icon(Icons.directions_car,
                            color: Colors
                                .white), // Isso coloca um ícone de carro branco no início do input
                      ),
                      const SizedBox(
                          height:
                              30.0), // Adicionado para dar um pouco de espaço entre o input e o botão.
                      ElevatedButton(
                        onPressed: () {
                          if (isValidRenavam(_renavamTextController.text)) {
                            Navigator.pushNamed(
                                context, CreateNewPassword.routeName);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("RENAVAM inválido!")),
                            );
                          }
                        },
                        child: DefaultText(
                          text: "Verificar Renavam",
                          weight: FontWeight.normal,
                          fontSize: 16,

                          color: Colors
                              .black, // Isso é opcional, já que a cor padrão do seu widget DefaultText é branca
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100.0, vertical: 25.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FordBackButton(onPressed: () {
                      Navigator.pushNamed(context, Registration.routeName);
                    }),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
