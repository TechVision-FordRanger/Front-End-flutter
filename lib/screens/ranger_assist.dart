import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/login_screen.dart';
import 'package:ford_ranger/widgets/default_text.dart';
import 'package:ford_ranger/widgets/home_background.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RangerAssist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeBackground(
        child: SingleChildScrollView(
            child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: DefaultText(
            text: 'Ranger Assist', fontSize: 32, weight: FontWeight.w700),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 170 - (91 + 47)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/images/dots.png'),
            ),
            DefaultText(
              text: 'Cuidados com sua ranger',
              fontSize: 20,
              weight: FontWeight.w700,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/images/dots.png'),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 206 - (150 + 44)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              height: 176,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD1E5FF)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                DefaultText(
                                    text: 'Gasolina',
                                    color: Colors.black,
                                    fontSize: 15),
                                DefaultText(
                                    text: 'Infos',
                                    color: Colors.black,
                                    fontSize: 10)
                              ],
                            ),
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xC7003478),
                                    borderRadius: BorderRadius.circular(1000)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child:
                                      Image.asset('assets/images/icon-gas.png'),
                                ))
                          ]),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xC7003478)),
                          child: Center(
                              child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ultimo Abastecimento: ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight
                                        .bold, // Definindo para negrito
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                                TextSpan(
                                  text: 'há 4 dias',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                              ],
                            ),
                          ))),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xC7003478)),
                          child: Center(
                              child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Quantidade Restante: ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight
                                        .bold, // Definindo para negrito
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                                TextSpan(
                                  text: '40 Litros',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                              ],
                            ),
                          ))),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xC7003478)),
                          child: Center(
                              child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Autonomia: ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight
                                        .bold, // Definindo para negrito
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                                TextSpan(
                                  text: '120 Km',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                              ],
                            ),
                          )))
                    ]),
              )),
          Container(
              height: 176,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF427DCA)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                DefaultText(
                                    text: 'Manutenção',
                                    color: Colors.black,
                                    fontSize: 15),
                                DefaultText(
                                    text: 'Infos',
                                    color: Colors.black,
                                    fontSize: 10)
                              ],
                            ),
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xFF003478),
                                    borderRadius: BorderRadius.circular(1000)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset('assets/images/tools.png'),
                                ))
                          ]),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xFF003478)),
                          child: Center(
                              child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ultima Manutenção: ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight
                                        .bold, // Definindo para negrito
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                                TextSpan(
                                  text: 'há 24 dias',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                              ],
                            ),
                          ))),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xFF003478)),
                          child: Center(
                              child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Kms Rodados: ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight
                                        .bold, // Definindo para negrito
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                                TextSpan(
                                  text: '40km',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                              ],
                            ),
                          ))),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xFF003478)),
                          child: Center(
                              child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Proxíma revisão: ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight
                                        .bold, // Definindo para negrito
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                                TextSpan(
                                  text: '9000kms',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors
                                        .white, // Defina a cor conforme necessário
                                  ),
                                ),
                              ],
                            ),
                          )))
                    ]),
              )),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 420 - (176 + 206)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/images/dots.png'),
            ),
            DefaultText(
              text: 'Suas Peças',
              fontSize: 20,
              weight: FontWeight
                  .w700, // Adicione isso se quiser a fonte em negrito como no segundo
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/images/dots.png'),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 206 - (150 + 44)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              height: 176,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF427DCA)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                DefaultText(
                                    text: 'Vida útil das',
                                    color: Colors.black,
                                    fontSize: 13),
                                DefaultText(
                                    text: 'Peças',
                                    color: Colors.black,
                                    fontSize: 13)
                              ],
                            ),
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xC7003478),
                                    borderRadius: BorderRadius.circular(1000)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child:
                                      Image.asset('assets/images/tools2.png'),
                                ))
                          ]),
                      Container(
                          height: 97,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF003478)),
                          child: Image.asset('assets/images/breakes.png'))
                    ]),
              )),
          Container(
              height: 176,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD1E5FF)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultText(
                                    text: 'Lojas',
                                    color: Colors.black,
                                    fontSize: 13),
                                DefaultText(
                                    text: 'Parceiras',
                                    color: Colors.black,
                                    fontSize: 13)
                              ],
                            ),
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xC7003478),
                                    borderRadius: BorderRadius.circular(1000)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child:
                                      Image.asset('assets/images/location.png'),
                                ))
                          ]),
                      Container(
                          height: 97,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF003478)),
                          child: Image.asset('assets/images/store-front.png'))
                    ]),
              ))
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/images/dots.png'),
            ),
            DefaultText(
              text: 'Postos de gasolina próximos',
              fontSize: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/images/dots.png'),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Container(
            width: 355,
            height: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF427DCA)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: InkWell(
                        onTap: _launchUrlMaps,
                        child: Image.asset('assets/images/map-two-ex.png')),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: Color(0xC6003478)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultText(
                                      text: 'Rua xxxxx, n88', fontSize: 11),
                                  DefaultText(
                                      text: '5 minutos de distância',
                                      fontSize: 11,
                                      weight: FontWeight.bold)
                                ])),
                        Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: Color(0xC6003478)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultText(
                                      text: 'Rua xxxxx, n88', fontSize: 11),
                                  DefaultText(
                                      text: '15 minutos de distância',
                                      fontSize: 11,
                                      weight: FontWeight.bold)
                                ])),
                        Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: Color(0xC6003478)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultText(
                                      text: 'Rua xxxxx, n88', fontSize: 11),
                                  DefaultText(
                                      text: '20 minutos de distância',
                                      fontSize: 11,
                                      weight: FontWeight.bold)
                                ])),
                        Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: Color(0xC6003478)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultText(
                                      text: 'Rua xxxxx, n88', fontSize: 11),
                                  DefaultText(
                                      text: '5 minutos de distância',
                                      fontSize: 11,
                                      weight: FontWeight.bold)
                                ])),
                      ])
                ])),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/images/dots.png'),
            ),
            DefaultText(
              text: 'Manual do Veículo',
              fontSize: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/images/dots.png'),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Container(
            width: 355,
            height: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Color(0xFFD1E5FF)),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: DefaultText(
                    text: 'Ranger Limited', color: Colors.black, fontSize: 15),
              ),
              DefaultText(
                text: '2024',
                color: Colors.black,
                fontSize: 15,
                weight: FontWeight.w700,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 165,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xC6003478)),
                    child: InkWell(
                      onTap: _launchUrlPdf,
                      child: Image.asset('assets/images/big-info.png'),
                    )),
              ),
            ])),
      ),
      Container(height: 65)
    ])));
  }

  final Uri _urlPdf = Uri.parse(
      'https://www.ford.com.br/content/dam/Ford/website-assets/latam/br/nameplate/2023/ranger/pdf/fbr-ranger-2023-manual-do-propietario.pdf');

  Future<void> _launchUrlPdf() async {
    if (!await launchUrl(_urlPdf)) {
      throw Exception('Could not launch $_urlPdf');
    }
  }

  final Uri _urlMaps = Uri.parse('https://www.google.com/maps');

  Future<void> _launchUrlMaps() async {
    if (!await launchUrl(_urlMaps)) {
      throw Exception('Could not launch $_urlMaps');
    }
  }
}
