import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/registration.dart';
import '../screens-antigas/login_screen.dart';
import '../screens-antigas/register_one_screen.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundColor(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_ford.png'),
            SizedBox(height: 16.0),
            Image.asset('assets/images/ranger_picture.png'),
            SizedBox(height: 16.0),

            // Texto: "Já é um membro Ranger?"
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Já é um membro Ranger?",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 8.0),

            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: Text('Fazer Login'),
            ),
            SizedBox(height: 8.0),

            // Seu texto editável seguido pelo botão "Cadastre sua Ranger"
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centraliza os elementos na linha
              children: [
                Text(
                  "Ainda não faz parte do nosso programa de membros?", // Note o espaço após o ponto para separação
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Registration.routeName);
                  },
                  child: Text('Cadastre sua Ranger'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
