import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/custom_input_cadastro.dart';

import '../widgets/custom_background_color.dart';
import '../widgets/logo_ford.dart';
import '../widgets/proximo_button.dart';
import '../widgets/ranger_live_kife_image.dart';
import '../widgets/voltar_button.dart';

class CadastroScreen extends StatelessWidget {

  static String routeName = '/new-user';

  // Controladores para os campos de entrada
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController sobrenomeController = TextEditingController();
  final TextEditingController dataAniversarioController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundColor(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: LogoFord(width: 200, height: 200),
                  ),
                  RangerLiveKifeImage(), // A imagem não terá padding.
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomInputCadastro(
                          controller: nomeController,
                          hintText: 'Nome e Sobrenome',
                          prefixIcon: Icon(Icons.person,
                              color: Colors.white), // Ícone de perfil
                        ),
                        SizedBox(height: 30.0),
                        CustomInputCadastro(
                          controller: dataAniversarioController,
                          hintText: 'Data de Nascimento',
                          keyboardType: TextInputType.datetime,
                          prefixIcon:
                              Icon(Icons.calendar_today, color: Colors.white),
                          onTapIcon: () async {
                            DateTime? selectedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );

                            if (selectedDate != null) {
                              dataAniversarioController.text =
                                  "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                            }
                          },
                        ),
                        SizedBox(height: 30.0),
                        CustomInputCadastro(
                          controller: emailController,
                          hintText: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icon(Icons.mail,
                              color: Colors.white), // Ícone de carta (e-mail)
                        ),
                        SizedBox(height: 30.0),
                        CustomInputCadastro(
                          controller: telefoneController,
                          hintText: 'Número de Telefone',
                          keyboardType: TextInputType.phone,
                          prefixIcon: Icon(Icons.phone,
                              color: Colors.white), // Ícone de telefone
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VoltarButton(onPressed: () {
                      // Adicione a função para voltar aqui
                    }),
                    ProximoButton(onPressed: () {
                      // Adicione a função para ir para a próxima tela aqui
                    }),
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
