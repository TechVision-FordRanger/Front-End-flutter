import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ford_ranger/models/auth_dto.dart';
import 'package:ford_ranger/models/default_response_dto.dart';
import 'package:ford_ranger/screens/home_page.dart';
import 'package:ford_ranger/screens/registration.dart';
import 'package:ford_ranger/services/auth_service.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_password.dart';
import 'package:ford_ranger/widgets/custom_input_registration.dart';
import 'package:ford_ranger/widgets/logo_ford.dart';

class LoginScreen extends StatefulWidget {
  @override
  static const String routeName = '/login-screen';

  const LoginScreen({super.key});

  @override
  _LoginSreenState createState() => _LoginSreenState();
}

class _LoginSreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundColor(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 92, left: 31, right: 31),
                child: const LogoFord(width: 328, height: 125),
              ),
              const SizedBox(height: 20),
              Container(
                width: 328,
                height: 72,
                margin: const EdgeInsets.fromLTRB(30, 100, 0, 0),
                child: const Text(
                  "Bem-vindo de volta!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 25, left: 20, right: 20),
                child: CustomInputRegistration(
                  controller: _loginController,
                  hintText: "Login",
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: CustomInputPassword(
                  controller: _passwordController,
                  hintText: "Senha",
                  obscureText: !_passwordVisible,
                  suffixIcon: Icon(
                    _passwordVisible ? Icons.visibility_off : Icons.visibility,
                  ),
                  onTapIcon: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Validação do email e senha
                    String email = _loginController.text;
                    String password = _passwordController.text;

                    if (email == "ford@ford.com.br" && password == "fordford") {
                      // Lógica para processar o login bem-sucedido
                      Navigator.pushNamed(context, HomePage.routeName);
                    } else {
                      logIn();
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: Container(
                    width: 340,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16, // Tamanho da fonte do botão
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Navegue para a tela de cadastro
                },
                child: Container(
                  width: 313,
                  height: 47,
                  margin: const EdgeInsets.fromLTRB(43, 0, 0, 0),
                  child: Text.rich(
                    TextSpan(
                      text: "Ainda não é um membro Ranger? ",
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "Faça seu cadastro",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, Registration.routeName);
                            },
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void logIn() async {
    AuthService authService = AuthService();
    String email = _loginController.text;
    String password = _passwordController.text;

    DefaultResponseDto<dynamic> res = await authService
        .logIn(AuthDto(email: email, password: password).toJson());

    if (res.success) {
      Navigator.pushNamed(context, HomePage.routeName);
    } else {
      // Exibir uma mensagem de erro
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Erro de Autenticação"),
            content: const Text("Email ou senha inválidos. Tente novamente."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }
}
