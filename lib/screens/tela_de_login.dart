import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/custom_input_cadastro.dart';
import 'package:ford_ranger/widgets/logo_ford.dart';
import 'package:ford_ranger/widgets/custom_input_senha.dart';

class TelaDeLogin extends StatefulWidget {
  @override
  static const String routeName = '/tela-de-login';

  _TelaDeLoginState createState() => _TelaDeLoginState();
}

class _TelaDeLoginState extends State<TelaDeLogin> {
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
                // Lógica para processar o login
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Cor de fundo do botão
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
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
