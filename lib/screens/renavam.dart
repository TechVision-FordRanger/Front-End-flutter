import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/registration.dart';
import 'package:ford_ranger/widgets/back_button.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_registration.dart';
import 'package:ford_ranger/widgets/default_text.dart';

import '../models/default_response_dto.dart';
import '../models/user_dto.dart';
import '../services/onboarding_service.dart';

class Renavam extends StatefulWidget {
  Renavam(this.user);
  final UserDto user;
  static const routeName = '/renavam';

  @override
  _RenavamState createState() => _RenavamState();
}

class _RenavamState extends State<Renavam> {
  final OnboardingService onboardingService = OnboardingService();
  final _formKey = GlobalKey<FormState>();
  TextEditingController _renavamTextController = TextEditingController();

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
          Form(
            key: _formKey,
            child: Column(
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
                          prefixIcon:
                              Icon(Icons.directions_car, color: Colors.white),
                          validator: (value) {
                            if (!isValidRenavam(value!)) {
                              return "RENAVAM inválido!";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 30.0),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              saveRenavam();
                            }
                          },
                          child: DefaultText(
                            text: "Verificar Renavam",
                            weight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.black,
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
          ),
        ],
      ),
    );
  }

  dynamic saveRenavam() async {
    widget.user.renavam = _renavamTextController.text;
    dynamic id = widget.user.id;
    Map<String, String> renavamObject = {
      'renavam': _renavamTextController.text
    };
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
