import 'package:flutter/material.dart';
import 'package:ford_ranger/screens-antigas/loading_screen.dart';
import 'package:ford_ranger/screens-antigas/welcome_screen.dart';
import 'package:ford_ranger/screens/login_screen.dart';
import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/home_page.dart';
import 'package:ford_ranger/screens/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // Defina o tema do seu aplicativo aqui, se necessário
          ),
      // Defina a tela inicial do seu aplicativo aqui
      // initialRoute: LoadingScreen.routeName,
      initialRoute: LoginScreen.routeName,
      routes: {
        // Mapeie as rotas para suas telas
        LoginScreen.routeName: (context) => const LoginScreen(),
        LoadingScreen.routeName: (context) => const LoadingScreen(),
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        // CreateNewPassword.routeName: (context) => CreateNewPassword(),
        // CadastroScreen.routeName: (context) => CadastroScreen(),
      },
    );
  }
}
