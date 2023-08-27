import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_cadastro.dart';
import 'package:ford_ranger/widgets/logo_ford.dart';
import 'package:ford_ranger/widgets/custom_input_senha.dart';

class LoginScreen extends StatefulWidget {
  @override
  static const String routeName = '/login-screen';

  _LoginSreenState createState() => _LoginSreenState();
}

class _LoginSreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundColor(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LogoFord(width: 328, height: 125),
            SizedBox(height: 20),
            Container(
              width: 328,
              height: 72,
              margin: EdgeInsets.fromLTRB(35, 259, 0, 0),
              child: Text(
                "Bem-vindo de volta!",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 10),
            CustomInputCadastro(
              controller: _loginController,
              hintText: "Login",
            ),
            SizedBox(height: 20),
            CustomInputSenha(
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Validação do email e senha
                String email = _loginController.text;
                String password = _passwordController.text;

                if (email == "ford@ford.com.br" && password == "fordford") {
                  // Lógica para processar o login bem-sucedido
                  // Navegar para a próxima tela ou realizar outras ações
                } else {
                  // Exibir uma mensagem de erro
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Erro de Autenticação"),
                        content:
                            Text("Email ou senha inválidos. Tente novamente."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Container(
                width: 340,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // Tamanho da fonte do botão
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navegue para a tela de cadastro
              },
              child: Container(
                width: 313,
                height: 47,
                margin: EdgeInsets.fromLTRB(43, 0, 0, 0),
                child: Text.rich(
                  TextSpan(
                    text: "Ainda não é um membro Ranger? ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "Faça seu cadastro",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // colocar caminho tela cadastro
                          },
                        style: TextStyle(
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
    );
  }
}
