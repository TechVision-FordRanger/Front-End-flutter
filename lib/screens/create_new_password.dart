import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/login_screen.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_password.dart';

import '../models/default_response_dto.dart';
import '../models/user_dto.dart';
import '../services/onboarding_service.dart';

class CreateNewPassword extends StatefulWidget {
  static const String routeName = '/create-new-password';

  CreateNewPassword(this.user);
  final UserDto user;

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final OnboardingService onboardingService = OnboardingService();

  bool confirmTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundColor(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 102),
                  child: Container(
                      child: Image.asset(
                    'assets/images/padlock1.png',
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 331 - (102 + 200)),
                  child: SizedBox(
                    width: 202,
                    child: Text(
                      'Crie sua senha',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 365 - (30  + 331)),
                  child: SizedBox(
                    width: 347,
                    child: Text('Senhas devem conter pelo menos 8 caracteres',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 453 - (365 + 60)),
                  child: SizedBox(
                    width: 340,
                    height: 50,
                    child: CustomInputPassword(
                      controller: passwordController,
                      hintText: 'Senha',
                      suffixIcon: const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 561 - (453 + 60)),
                  child: SizedBox(
                    width: 340,
                    height: 50,
                    child: CustomInputPassword(
                      controller: confirmPasswordController,
                      hintText: 'Confirme sua senha',
                      suffixIcon: const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 654 - (561 + 50)),
                  child: SizedBox(
                    width: 340,
                    child: Row(
                      children: [
                        Checkbox(
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white),
                          overlayColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white),
                          checkColor: MaterialStateColor.resolveWith(
                              (states) => const Color.fromARGB(255, 13, 192, 212)),
                          value: confirmTerms,
                          onChanged: (bool? value) {
                            setState(() {
                              confirmTerms = value!;
                            });
                          },
                        ),
                        Flexible(
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Confirme os '),
                                TextSpan(
                                  text: 'Termos de Uso',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                                TextSpan(text: ' do aplicativo'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 748 - (654 + 31)),
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white)),
                      onPressed: () => {
                        savePassword()
                      },
                      child: const Text(
                        'Torne-se um Membro Ranger',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

   dynamic savePassword() async {
    widget.user.password = passwordController.text;
    dynamic id = widget.user.id;
    Map<String, String> passwordObject = {'password': passwordController.text};
    if (id != null && id! > 0) {
      DefaultResponseDto<UserDto> res =
          await onboardingService.updateUser(widget.user.id!, passwordObject);
      if (res.success) {
        Navigator.pushNamed(context, LoginScreen.routeName);
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
