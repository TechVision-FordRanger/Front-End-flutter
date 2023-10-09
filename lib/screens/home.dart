import 'package:flutter/material.dart';
import 'package:ford_ranger/models/user_dto.dart';
import 'package:ford_ranger/widgets/custom_background_color.dart';
import 'package:ford_ranger/widgets/default_text.dart';
import 'package:ford_ranger/widgets/home_background.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.user});

  final UserDto user;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackground(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
                child: Image.asset(
              'assets/images/perfil.png',
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240 - (82 + 130)),
            child: Text(widget.user.firstName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 283 - (38 + 240)),
            child: Opacity(
              opacity: 0.6,
              child: Text(
                widget.user.email,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 338 - (283 + 20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                      height: 96,
                      width: 133,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF5895E4)),
                      // color: Color(0xFF5895E4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultText(
                            text: '1000',
                            fontSize: 30,
                            weight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: DefaultText(
                              text: 'Km',
                              fontSize: 18,
                              weight: FontWeight.w600,
                              color: Color.fromARGB(68, 0, 0, 0),
                            ),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Container(
                      height: 96,
                      width: 133,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF5895E4)),
                      // color: Color(0xFF5895E4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultText(
                            text: '11',
                            fontSize: 30,
                            weight: FontWeight.w700,
                            color: Colors.white,
                            align: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Container(
                              width: 116,
                              child: DefaultText(
                                text: 'Dias com a ranger',
                                fontSize: 16,
                                weight: FontWeight.w600,
                                color: Color.fromARGB(68, 0, 0, 0),
                                align: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480 - (338 + 96)),
            child: Container(
              height: 400,
              color: Color.fromARGB(122, 0, 2, 116),
              child: Padding(
                padding: const EdgeInsets.only(top: 501 - 470),
                child: Column(children: [
                  DefaultText(
                    text: 'Ranger limited 2024',
                    fontSize: 20,
                    weight: FontWeight.w700,
                    align: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 542 - (501 + 29)),
                    child: Container(
                        child: widget.user.rangerColor != 'red'
                            ? Image.asset(
                                'assets/images/blue-ford-no-bg.png',
                              )
                            : Image.asset(
                                'assets/images/ranger-sem-fundo.png',
                              )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                                child: DefaultText(
                              text: 'Placa',
                              fontSize: 15,
                              weight: FontWeight.w700,
                            )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 95,
                                  height: 19,
                                  color: Colors.white,
                                  child: DefaultText(
                                      text: 'GOL1234',
                                      color: Colors.black,
                                      align: TextAlign.center)),
                            )
                          ],
                        ),
                        Column(children: [
                          Container(
                              child: DefaultText(
                            text: 'Cor',
                            fontSize: 15,
                            weight: FontWeight.w700,
                          )),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, bottom: 0),
                            child: Container(
                              width: 95,
                              height: 19,
                              decoration: BoxDecoration(
                                color: widget.user.rangerColor == 'red'
                                    ? Color.fromARGB(255, 122, 14, 6)
                                    : Color.fromARGB(255, 7, 23, 240),
                                border: Border.all(
                                  color: Colors.white,
                                  width:
                                      1.2, // você pode ajustar a espessura da borda aqui
                                ),
                              ),
                            ),
                          ),
                        ])
                      ],
                    ),
                  )
                ]),
              ),
            ),
          )
        ],
      ))),
    );
  }

  findUserData() async {}
}
