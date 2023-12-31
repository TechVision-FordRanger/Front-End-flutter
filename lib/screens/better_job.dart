import 'package:flutter/material.dart';
import 'package:ford_ranger/widgets/default_text.dart';
import 'package:ford_ranger/widgets/home_background.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(-23.573917788476074, -46.62320597160591);

class BetterJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeBackground(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: DefaultText(
              text: 'Better Job',
              fontSize: 32,
              weight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 161 - (85 + 47)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/dots.png'),
                ),
                DefaultText(
                  text: 'Botões de Emergência',
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
            padding: const EdgeInsets.only(top: 234 - (161 + 44)),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(23.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFD1E5FF)),
                          width: 118,
                          height: 118,
                          // color: Color(0xFFD1E5FF),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/alert.png',
                              ),
                              DefaultText(
                                text: 'Emergência',
                                color: Color(0xFF790D00),
                                align: TextAlign.center,
                                fontSize: 15,
                                weight: FontWeight.w700,
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFD1E5FF)),
                          width: 118,
                          height: 118,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/police.png',
                              ),
                              DefaultText(
                                  text: 'Ligar para autoridade',
                                  color: Color(0xFF866900),
                                  align: TextAlign.center,
                                  fontSize: 13,
                                  weight: FontWeight.w700)
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFD1E5FF)),
                          width: 118,
                          height: 118,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/icon-radio.png',
                              ),
                              DefaultText(
                                  text: 'Sinal de Radio',
                                  color: Color(0xFF003478),
                                  align: TextAlign.center,
                                  fontSize: 15,
                                  weight: FontWeight.w700)
                            ],
                          )),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 392 - (264 + 85)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/dots.png'),
                ),
                DefaultText(
                  text: 'Suas Rotas',
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: currentLocation, zoom: 15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 740 - (277 + 392)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/dots.png'),
                ),
                DefaultText(
                  text: 'Organize suas Cargas',
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
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                width: 330,
                height: 250,
                decoration: BoxDecoration(
                    color: Color(0xFF5895E4),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Image.asset('assets/images/cargo-container.png'),
                    SizedBox(
                      width: 218,
                      child: DefaultText(
                        text: 'Organizador de Cargas Inteligentes',
                        color: Color(0xFF790D00),
                        weight: FontWeight.w700,
                        align: TextAlign.center,
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 740 - (277 + 392)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/dots.png'),
                ),
                DefaultText(
                  text: 'Assistente de Drones',
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
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                width: 330,
                height: 215,
                decoration: BoxDecoration(
                    color: Color(0xFF051A35),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 218,
                        child: DefaultText(
                          text: 'Informações',
                          color: Color.fromARGB(255, 255, 255, 255),
                          weight: FontWeight.w700,
                          align: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/info-drone.png'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 83,
                                        child: DefaultText(
                                            text: 'Drones Ativos:',
                                            fontSize: 10,
                                            weight: FontWeight.w700),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                            width: 50,
                                            color: Colors.white,
                                            child: DefaultText(
                                              text: '0',
                                              fontSize: 10,
                                              align: TextAlign.center,
                                              color: Colors.black,
                                            )),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 83,
                                        child: DefaultText(
                                            text: 'Drones Inativos:',
                                            fontSize: 10,
                                            weight: FontWeight.w700),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                            width: 50,
                                            color: Colors.white,
                                            child: DefaultText(
                                              text: '0',
                                              fontSize: 10,
                                              align: TextAlign.center,
                                              color: Colors.black,
                                            )),
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 83,
                                        child: DefaultText(
                                            text: 'Área percorrida:',
                                            fontSize: 10,
                                            weight: FontWeight.w700),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                            width: 50,
                                            color: Colors.white,
                                            child: DefaultText(
                                              text: '0 km',
                                              fontSize: 10,
                                              align: TextAlign.center,
                                              color: Colors.black,
                                            )),
                                      )
                                    ])
                              ],
                            )
                          ]),
                    )
                  ],
                )),
          ),
          Container(height: 100)
        ],
      ),
    ));
  }
}
