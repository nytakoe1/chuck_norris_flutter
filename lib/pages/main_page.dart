import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 700)),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Chuck Norris Tinder',
                        textStyle: TextStyle(
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Color(0xff33ccff),
                                  Color(0xffff99cc),
                                ],
                              ).createShader(
                                  Rect.fromLTWH(100.0, 150.0, 100.0, 100.0)),
                            fontSize: 25.0,
                            shadows: const <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(130, 0, 0, 0),
                              ),
                            ]),
                        speed: const Duration(milliseconds: 100),
                      )
                    ],
                    totalRepeatCount: 1,
                  )
                ],
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 300)),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                    style: TextButton.styleFrom(
                        primary: const Color(0xffff99cc),
                        textStyle:
                            const TextStyle(fontSize: 14.0, shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(130, 0, 0, 0),
                          ),
                        ])),
                    child: const Text('next'),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
