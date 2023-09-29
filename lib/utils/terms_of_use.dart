import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TermsOfUseDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Termos de Uso e Política de Privacidade'),
      content: SingleChildScrollView(
        child: Text(
            'TERMOS DE USO\n\n'
            'A) Definição de Termos\n\n'
            '1. Usuário: Pessoa que acessa, utiliza ou adquire serviços ou produtos através do nosso aplicativo/site.\n'
            '2. Aplicativo/Site: Plataforma digital desenvolvida e mantida por Ford Ranger.\n'
            '3. Serviços: Funções, produtos ou informações fornecidas ao usuário por meio do nosso aplicativo/site.\n\n'
            'B) Escopo do Serviço/Produto\n\n'
            'Os usuários estão adquirindo o acesso ao Aplicativo que contem a facilitação para o dia a dia com uma Ranger. Qualquer recurso ou serviço não explicitamente mencionado nestes termos não está incluído e não deve ser esperado pelo usuário.\n\n'
            'C) Responsabilidades\n\n'
            'Da Startup: Garantir que os serviços/produtos listados sejam fornecidos conforme descrito.\n'
            'Do Usuário: Fazer uso adequado dos serviços/produtos, respeitando estes termos e quaisquer leis aplicáveis.\n\n'
            'Disclaimer: Todas as opiniões expressadas nos comentários deste site-aplicativo não expressam a opinião da Ford Ranger, mas tão somente a opinião de quem os escreveu.\n\n'
            'Excludente de Responsabilidade: A Ford Ranger não se responsabiliza por danos ou prejuízos com envio de informações ou de conteúdo publicitário não disparados pela própria Ford Ranger ou pelo conteúdo das opiniões postadas no aplicativo ou site.\n\n'
            'D) Direitos Autorais\n\n'
            'Todo o conteúdo e tecnologia no aplicativo/site é propriedade da Ford Ranger e está protegido por leis de direitos autorais. Qualquer uso não autorizado pode resultar em consequências legais.\n\n'
            'POLÍTICA DE PRIVACIDADE\n\n'
            'A) Informações Coletadas\n\n'
            'Coletamos Nome completo, data de nascimento, E-mail, Telefone e Renavam do veículo quando você se registra ou utiliza nosso serviço.\n\n'
            'B) Disponibilização a Terceiros\n\n'
            'As informações nao podem ser distribuidas para terceiros\n\n'
            'C) Armazenamento das Informações\n\n'
            'Seus dados são armazenados em servidores seguros, com todas as medidas de proteção necessárias para evitar acessos não autorizados.\n\n'
            'D) Modificações da Política de Privacidade\n\n'
            'Qualquer alteração em nossa política de privacidade será notificada a todos os usuários através do aplicativo/site e, se necessário, por email.\n\n'
            'E) Cookies\n\n'
            'Nosso aplicativo/site utiliza cookies para  melhorar a experiência do usuário e lembrar de suas preferências.\n\n'
            'F) Faixa Etária\n\n'
            'Nosso aplicativo/site é destinado a usuários com idade igual ou superior à 18 anos. Se descobrirmos que um usuário é menor de idade, reservamo-nos o direito de remover suas informações e rescindir sua conta.\n'
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Fechar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
