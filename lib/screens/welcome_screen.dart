import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/login_screen.dart';
import 'package:ford_ranger/screens/registration.dart';
import 'package:ford_ranger/widgets/default_text.dart';
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
            Image.asset('assets/images/logo_ford_azul_escuro.png'),
            SizedBox(height: 16.0),
            Image.asset('assets/images/ranger_picture.png'),
            SizedBox(height: 16.0),

            // Texto: "Já é um membro Ranger?"
            Align(
              alignment: Alignment.centerRight, // Modificado para centerRight
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: DefaultText(
                  text: "Já é um membro Ranger?",
                  align: TextAlign.right,
                  weight: FontWeight.w400,
                ),
              ),
            ),

            SizedBox(height: 16.0),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login-screen');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: Container(
                  width: 340,
                  height: 50,
                  alignment: Alignment.center,
                  child: DefaultText(
                    text: 'Login',
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            SizedBox(height: 16.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:
                        16, // Assuma que este é o tamanho de fonte padrão do seu DefaultText
                    fontWeight:
                        FontWeight.w400, // E este é o peso da fonte padrão
                  ),
                  children: [
                    TextSpan(
                        text:
                            "Ainda não faz parte do nosso programa de membros? "),
                    TextSpan(
                      text: 'Faça seu cadastro',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, Registration.routeName);
                        },
                    ),
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
