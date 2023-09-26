import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ford_ranger/utils/terms_of_use.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_password.dart';

class CreateNewPassword extends StatefulWidget {
  static const String routeName = '/create-new-password';

  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool confirmTerms = false;
  bool isPasswordVisible = false;
  String? errorMessage;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  void _showTermsOfUseDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) => TermsOfUseDialog(),
    );
  }

  bool validateInputs() {
    if (passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      setState(() {
        errorMessage = "Preencha todos os campos";
      });
      return false;
    }

    if (!confirmTerms) {
      setState(() {
        errorMessage = "Aceite os Termos de Uso";
      });
      return false;
    }

    if (passwordController.text != confirmPasswordController.text) {
      setState(() {
        errorMessage = "As senhas não coincidem";
      });
      return false;
    }

    final passwordPattern = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{8,}$';
    final passwordRegex = RegExp(passwordPattern);
    if (!passwordRegex.hasMatch(passwordController.text)) {
      setState(() {
        errorMessage =
            "A senha precisa ter pelo menos 8 caracteres, uma letra maiúscula, uma letra minúscula e um número.";
      });
      return false;
    }

    return true;
  }

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
                  padding: EdgeInsets.only(top: 365 - (30 + 331)),
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
                      suffixIcon: Icon(isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onTapIcon: togglePasswordVisibility,
                      obscureText: !isPasswordVisible,
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
                      suffixIcon: Icon(isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onTapIcon: togglePasswordVisibility,
                      obscureText: !isPasswordVisible,
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
                          checkColor: MaterialStateColor.resolveWith((states) =>
                              const Color.fromARGB(255, 13, 192, 212)),
                          value: confirmTerms,
                          onChanged: (bool? value) {
                            setState(() {
                              confirmTerms = value!;
                            });
                          },
                        ),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
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
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            TermsOfUseDialog(),
                                      );
                                    },
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
                      onPressed: () {
                        if (validateInputs()) {
                          Navigator.pushNamed(context, '/home');
                        }
                      },
                      child: const Text(
                        'Torne-se um Membro Ranger',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                if (errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      errorMessage!,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
