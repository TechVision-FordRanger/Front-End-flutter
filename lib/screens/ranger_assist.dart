import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/default_text.dart';
import 'package:ford_ranger/widgets/home_background.dart';

class RangerAssist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeBackground(
        child: SingleChildScrollView(
            child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 91),
        child: DefaultText(
            text: 'Ranger Assist', fontSize: 32, weight: FontWeight.w700),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 170 - (91 + 47)),
        child: DefaultText(
            text: 'Cuidados com sua ranger',
            fontSize: 20,
            weight: FontWeight.w700),
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
                              child: DefaultText(
                            text: 'Ultimo Abastecimento: há 4 dias',
                            fontSize: 10,
                            weight: FontWeight.w400,
                          ))),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xC7003478)),
                          child: Center(
                              child: DefaultText(
                            text: 'Quantidade restante: 40 litros',
                            fontSize: 10,
                            weight: FontWeight.w400,
                          ))),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xC7003478)),
                          child: Center(
                              child: DefaultText(
                            text: 'Kms a ser rodados: 120 kms',
                            fontSize: 10,
                            weight: FontWeight.w400,
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
                              child: DefaultText(
                            text: 'Ultima Manutenção: há 14 dias',
                            fontSize: 10,
                            weight: FontWeight.w400,
                          ))),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xFF003478)),
                          child: Center(
                              child: DefaultText(
                            text: 'Kms rodados: 10 kms',
                            fontSize: 10,
                            weight: FontWeight.w400,
                          ))),
                      Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Color(0xFF003478)),
                          child: Center(
                              child: DefaultText(
                            text: 'Próxima revisão em: 10 kms',
                            fontSize: 10,
                            weight: FontWeight.w400,
                          )))
                    ]),
              )),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 420 - (176 + 206)),
        child: DefaultText(text: 'Suas Peças', fontSize: 20),
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
                                      Image.asset('assets/images/icon-gas.png'),
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
        child: DefaultText(
          text: 'Postos  de  gasolina próximos',
          fontSize: 20,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Container(
            width: 355,
            height: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF427DCA)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(child: Image.asset('assets/images/map-two-ex.png')),
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
                                      fontSize: 11)
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
                                      fontSize: 11)
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
                                      fontSize: 11)
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
                                      fontSize: 11)
                                ])),
                      ])
                ])),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: DefaultText(text: 'Manual do Veículo', fontSize: 20),
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
              DefaultText(text: '2024', color: Colors.black, fontSize: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 165,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xC6003478)),
                    child: Image.asset('assets/images/big-info.png')),
              ),
            ])),
      ),
      Container(height: 65)
    ])));
  }
}
