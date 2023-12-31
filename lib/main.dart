import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/loading_screen.dart';
import 'package:ford_ranger/screens/login_screen.dart';
import 'package:ford_ranger/screens/welcome_screen.dart';
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
      initialRoute: LoadingScreen.routeName,
      routes: {
        // Mapeie as rotas para suas telas
        LoadingScreen.routeName: (context) => LoadingScreen(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        // CreateNewPassword.routeName: (context) => CreateNewPassword(),
        Registration.routeName: (context) => Registration(),
        // Renavam.routeName: (context) => Renavam(),
        // HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
