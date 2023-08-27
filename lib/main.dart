import 'package:flutter/material.dart';
import 'package:ford_ranger/screens-antigas/loading_screen.dart';
import 'package:ford_ranger/screens-antigas/welcome_screen.dart';
<<<<<<< HEAD
import 'package:ford_ranger/screens/login_screen.dart';
=======
import 'package:ford_ranger/screens/create_new_password.dart';
import 'package:ford_ranger/screens/tela_de_cadastro.dart';
>>>>>>> 7f926cb307c878adeb388af821e8e5b29d459f7f

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
<<<<<<< HEAD

=======
>>>>>>> 7f926cb307c878adeb388af821e8e5b29d459f7f
      // Defina a tela inicial do seu aplicativo aqui
      // initialRoute: LoadingScreen.routeName,
      initialRoute: LoginScreen.routeName,
      routes: {
        // Mapeie as rotas para suas telas
        LoginScreen.routeName: (context) => LoginScreen(),
        LoadingScreen.routeName: (context) => LoadingScreen(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        CreateNewPassword.routeName: (context) => CreateNewPassword(),
        CadastroScreen.routeName: (context) => CadastroScreen(),
      },
    );
  }
}
