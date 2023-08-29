import 'package:flutter/material.dart';

import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/registration.dart';
import 'login_screen.dart';
import 'register_one_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ranger.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_ford.png'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: Text('Fazer Login'),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Registration.routeName);
              },
              child: Text('Cadastre sua Ranger'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 92, left: 31),
        child: Container(
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
                  Navigator.pushNamed(context, CadastroScreen.routeName);
                },
                child: const Text('Cadastre sua Ranger'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
