import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';
import 'screens/login_screen.dart';
import 'screens/better_job_screen.dart';
import 'screens/config_screen.dart';
import 'screens/home_screen.dart';
import 'screens/ranger_assist_screen.dart';
import 'screens/register_one_screen.dart';
import 'screens/register_two_screen.dart';
import 'screens/register_three_screen.dart';
import 'screens/welcome_screen.dart';

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
      },
    );
  }
}
