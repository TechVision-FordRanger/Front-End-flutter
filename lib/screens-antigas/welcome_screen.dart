import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/tela_de_cadastro.dart';
import 'login_screen.dart';
import 'register_one_screen.dart';
>>>>>>> 7f926cb307c878adeb388af821e8e5b29d459f7f

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ranger.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_ford.png'),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: const Text('Fazer Login'),
            ),
            const SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    CadastroScreen.routeName);
              },
              child: const Text('Cadastre sua Ranger'),
            ),
          ],
        ),
      ),
    );
  }
}
