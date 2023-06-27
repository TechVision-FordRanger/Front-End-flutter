import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_one_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome';

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
                // Navigator.pushNamed(context, RegisterOneScreen.routeName);
              },
              child: Text('Cadastre sua Ranger'),
            ),
          ],
        ),
      ),
    );
  }
}
