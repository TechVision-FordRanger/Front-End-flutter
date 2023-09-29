// Screens/CustomScreen.dart

import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/registration.dart';
import 'package:ford_ranger/widgets/back_button.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_registration.dart';
import 'package:ford_ranger/widgets/next_button.dart';

import '../models/default_response_dto.dart';
import '../models/user_dto.dart';
import '../services/onboarding_service.dart';

TextEditingController _renavamTextController = TextEditingController();

class Renavam extends StatefulWidget {
  Renavam(this.user);
  final UserDto user;
  static const routeName = '/renavam';

  @override
  State<Renavam> createState() => _RenavamState();
}

class _RenavamState extends State<Renavam> {
  final OnboardingService onboardingService = OnboardingService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackgroundColor(), // Move este widget para fora da coluna
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05 + 30.0,
                color: Color(0xFF003478), // Valores alpha ajustados
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.95 - 30.0,
                decoration: BoxDecoration(
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
                      Text(
                        "Para seguirmos, precisamos do Renavam da sua Ranger, que pode ser contrado no documento do seu veículo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 20.0),
                      Image.asset('assets/images/Renavam.png'),
                      SizedBox(height: 20.0),
                      CustomInputRegistration(
                        controller: _renavamTextController,
                        hintText: '00000000000',
                        prefixIcon: Icon(Icons.directions_car,
                            color: Colors
                                .white), // Isso coloca um ícone de carro branco no início do input
                      ),
                      SizedBox(
                          height:
                              30.0), // Adicionado para dar um pouco de espaço entre o input e o botão.
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.pushNamed(
                          //     context, CreateNewPassword.routeName);
                          saveRenavam();
                          // Ação do botão. Pode ser deixada vazia por enquanto, ou você pode adicionar sua lógica aqui.
                        },
                        child: Text("Validar"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Fundo branco
                          onPrimary: Colors.black, // Letra preta
                          padding: EdgeInsets.symmetric(
                              horizontal: 100.0,
                              vertical: 25.0), // Torna o botão maior
                          // Se desejar que o botão tenha cantos arredondados, por exemplo:
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

  dynamic saveRenavam() async {
    widget.user.renavam = _renavamTextController.text;
    dynamic id = widget.user.id;
    Map<String, String> renavamObject = {'renavam': _renavamTextController.text};
    if (id != null && id! > 0) {
      DefaultResponseDto<UserDto> res =
          await onboardingService.updateUser(widget.user.id!, renavamObject);
      if (res.success) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return CreateNewPassword(res.data!);
          },
        ));
      } else {
        // return ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text(res.message),
        //     backgroundColor: Colors.red,
        //   ),
        // );
      }
    }
  }
}
