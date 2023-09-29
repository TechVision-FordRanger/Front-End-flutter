import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:ford_ranger/models/default_response_dto.dart';
import 'package:ford_ranger/models/user_dto.dart';
import 'package:ford_ranger/screens/renavam.dart';
import 'package:ford_ranger/services/onboarding_service.dart';
import 'package:ford_ranger/widgets/custom_input_registration.dart';

import '../models/new_user_dto.dart';
import '../widgets/custom_background_color.dart';
import '../widgets/logo_ford.dart';
import '../widgets/next_button.dart';
import '../widgets/ranger_live_kife_image.dart';
import '../widgets/back_button.dart';

class Registration extends StatefulWidget {
  static String routeName = '/registration';

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  // Controladores para os campos de entrada
  final TextEditingController nameController = TextEditingController();

  final TextEditingController DateOfBirthController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController telephoneController = TextEditingController();

  final OnboardingService onboardingService = OnboardingService();

  final _formKey = GlobalKey<FormState>();

  bool isValidName(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    final regex = RegExp(r'^[a-zA-Z\s]*$');
    return regex.hasMatch(value);
  }

  bool isValidEmail(String value) {
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    return regex.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomBackgroundColor(
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: LogoFord(
                        width: screenWidth * 0.5,
                        height: screenWidth * 0.5,
                      ),
                    ),
                    RangerLiveKifeImage(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomInputRegistration(
                            controller: nameController,
                            hintText: 'Nome e Sobrenome',
                            prefixIcon: Icon(Icons.person, color: Colors.white),
                            validator: (value) {
                              if (!isValidName(value!)) {
                                return 'Digite um nome válido';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 30.0),
                          CustomInputRegistration(
                            controller: DateOfBirthController,
                            hintText: 'Data de Nascimento',
                            keyboardType: TextInputType.text,
                            prefixIcon:
                                Icon(Icons.calendar_today, color: Colors.white),
                            onTapIcon: () async {
                              DateTime? selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                              );

                              if (selectedDate != null) {
                                DateOfBirthController.text =
                                    "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                              }
                            },
                          ),
                          SizedBox(height: 30.0),
                          CustomInputRegistration(
                            controller: emailController,
                            hintText: 'E-mail',
                            keyboardType: TextInputType.emailAddress,
                            prefixIcon: Icon(Icons.mail, color: Colors.white),
                            validator: (value) {
                              if (!isValidEmail(value!)) {
                                return 'Digite um e-mail válido';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 30.0),
                          CustomInputRegistration(
                            controller: telephoneController,
                            hintText: 'Número de Telefone',
                            keyboardType: TextInputType.phone,
                            prefixIcon: Icon(Icons.phone, color: Colors.white),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FordBackButton(onPressed: () {
                      Navigator.pushNamed(context, '/welcome');
                    }),
                    NextButton(onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Se todos os campos são válidos, navegue para a tela Renavam
                        createUser();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                "Por favor, reveja os campos preenchidos."),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  dynamic createUser() async {
    NewUserDto user = NewUserDto(
        firstName: nameController.value.text,
        email: emailController.value.text,
        birthDate: DateOfBirthController.value.text,
        celphone: telephoneController.text);

    dynamic jsonUser = user.toJson();

    DefaultResponseDto res = await onboardingService.createUser(jsonUser);

    if (res.success) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return Renavam(res.data);
      },));
    } else {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res.message),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
