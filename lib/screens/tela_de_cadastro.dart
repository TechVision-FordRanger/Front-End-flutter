import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/custom_input_registration.dart';
import 'package:ford_ranger/widgets/next_button.dart';
import '../widgets/custom_background_color.dart';
import '../widgets/logo_ford.dart';
import '../widgets/ranger_live_kife_image.dart';

class CadastroScreen extends StatelessWidget {
  static String routeName = '/new-user';

  // Controladores para os campos de entrada
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController sobrenomeController = TextEditingController();
  final TextEditingController dataAniversarioController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();

  CadastroScreen({super.key});

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
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: LogoFord(width: 200, height: 200),
                  ),
                  const RangerLiveKifeImage(), // A imagem não terá padding.
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomInputRegistration(
                          controller: nomeController,
                          hintText: 'Nome e Sobrenome',
                          prefixIcon: const Icon(Icons.person,
                              color: Colors.white), // Ícone de perfil
                        ),
                        const SizedBox(height: 30.0),
                        CustomInputRegistration(
                          controller: dataAniversarioController,
                          hintText: 'Data de Nascimento',
                          keyboardType: TextInputType.datetime,
                          prefixIcon: const Icon(Icons.calendar_today,
                              color: Colors.white),
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
                        const SizedBox(height: 30.0),
                        CustomInputRegistration(
                          controller: emailController,
                          hintText: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: const Icon(Icons.mail,
                              color: Colors.white), // Ícone de carta (e-mail)
                        ),
                        const SizedBox(height: 30.0),
                        CustomInputRegistration(
                          controller: telefoneController,
                          hintText: 'Número de Telefone',
                          keyboardType: TextInputType.phone,
                          prefixIcon: const Icon(Icons.phone,
                              color: Colors.white), // Ícone de telefone
                        ),
                        const SizedBox(height: 20.0),
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
                    BackButton(onPressed: () {
                      // Adicione a função para voltar aqui
                    }),
                    NextButton(onPressed: () {
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
