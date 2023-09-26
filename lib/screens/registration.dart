import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/renavam.dart';
import 'package:ford_ranger/widgets/custom_input_registration.dart';

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

  final TextEditingController dateOfBirthController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController telephoneController = TextEditingController();

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
                    const RangerLiveKifeImage(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomInputRegistration(
                            controller: nameController,
                            hintText: 'Nome e Sobrenome',
                            prefixIcon:
                                const Icon(Icons.person, color: Colors.white),
                            validator: (value) {
                              if (!isValidName(value!)) {
                                return 'Digite um nome válido';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 30.0),
                          CustomInputRegistration(
                            controller: dateOfBirthController,
                            hintText: 'Data de Nascimento',
                            keyboardType: TextInputType.datetime,
                            prefixIcon: const Icon(Icons.calendar_today,
                                color: Colors.white),
                            onTapIcon: () async {
                              DateTime? selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                              );
                              if (selectedDate != null) {
                                dateOfBirthController.text =
                                    "${selectedDate.day.toString().padLeft(2, '0')}/${selectedDate.month.toString().padLeft(2, '0')}/${selectedDate.year}";
                              }
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, insira a data';
                              }

                              List<String> parts = value.split('/');
                              if (parts.length != 3) {
                                return 'Data inválida';
                              }

                              int day = int.tryParse(parts[0]) ?? 0;
                              int month = int.tryParse(parts[1]) ?? 0;
                              int year = int.tryParse(parts[2]) ?? 0;

                              DateTime birthDate;
                              try {
                                birthDate = DateTime(year, month, day);
                              } catch (e) {
                                return 'Data inválida';
                              }

                              DateTime currentDate = DateTime.now();

                              int age = currentDate.year - birthDate.year;
                              if (currentDate.month < birthDate.month ||
                                  (currentDate.month == birthDate.month &&
                                      currentDate.day < birthDate.day)) {
                                age--;
                              }

                              if (day <= 0 ||
                                  day > 31 ||
                                  month <= 0 ||
                                  month > 12) {
                                return 'Data inválida';
                              }

                              if (day > 30 &&
                                  (month == 4 ||
                                      month == 6 ||
                                      month == 9 ||
                                      month == 11)) {
                                return 'Data inválida';
                              }

                              if (month == 2 && day > 29) {
                                return 'Data inválida';
                              }

                              if (month == 2 &&
                                  day == 29 &&
                                  (year % 4 != 0 ||
                                      (year % 100 == 0 && year % 400 != 0))) {
                                return 'Não é um ano bissexto';
                              }

                              if (age < 18) {
                                return 'Você deve ser maior de 18 anos';
                              }

                              return null;
                            },
                          ),
                          const SizedBox(height: 30.0),
                          CustomInputRegistration(
                            controller: emailController,
                            hintText: 'E-mail',
                            keyboardType: TextInputType.emailAddress,
                            prefixIcon:
                                const Icon(Icons.mail, color: Colors.white),
                            validator: (value) {
                              if (!isValidEmail(value!)) {
                                return 'Digite um e-mail válido';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 30.0),
                          CustomInputRegistration(
                            controller: telephoneController,
                            hintText: 'Número de Telefone',
                            keyboardType: TextInputType.phone,
                            prefixIcon:
                                const Icon(Icons.phone, color: Colors.white),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, insira o número de telefone';
                              }

                              // Remove caracteres não numéricos
                              String phoneNumber =
                                  value.replaceAll(RegExp(r'[^0-9]'), '');

                              // Verifica o tamanho do telefone (deve ter 10 ou 11 dígitos)
                              if (phoneNumber.length != 10 &&
                                  phoneNumber.length != 11) {
                                return 'Número de telefone inválido';
                              }

                              // Lista de DDDs válidos no Brasil
                              List<String> validDDDs = [
                                "11",
                                "12",
                                "13",
                                "14",
                                "15",
                                "16",
                                "17",
                                "18",
                                "19",
                                "21",
                                "22",
                                "24",
                                "27",
                                "28",
                                "31",
                                "32",
                                "33",
                                "34",
                                "35",
                                "37",
                                "38",
                                "41",
                                "42",
                                "43",
                                "44",
                                "45",
                                "46",
                                "47",
                                "48",
                                "49",
                                "51",
                                "53",
                                "54",
                                "55",
                                "61",
                                "62",
                                "63",
                                "64",
                                "65",
                                "66",
                                "67",
                                "68",
                                "69",
                                "71",
                                "73",
                                "74",
                                "75",
                                "77",
                                "79",
                                "81",
                                "82",
                                "83",
                                "84",
                                "85",
                                "86",
                                "87",
                                "88",
                                "89",
                                "91",
                                "92",
                                "93",
                                "94",
                                "95",
                                "96",
                                "97",
                                "98",
                                "99"
                              ];

                              String ddd = phoneNumber.substring(0, 2);

                              if (!validDDDs.contains(ddd)) {
                                return 'DDD inválido';
                              }

                              return null;
                            },
                          ),
                          const SizedBox(height: 20.0),
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
                        Navigator.of(context).pushNamed(Renavam.routeName);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
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
}
