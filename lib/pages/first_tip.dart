import 'package:flutter/material.dart';

class FirstTipScreen extends StatelessWidget {
  const FirstTipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffff99cc),
        title: const Text('Chuck Norris Tinder'),
        titleTextStyle: const TextStyle(fontSize: 20, shadows: <Shadow>[
          Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 3.0,
            color: Color.fromARGB(130, 0, 0, 0),
          ),
        ]),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox.square(
              dimension: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Text(
                      'How to use the app?',
                      style: TextStyle(
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(130, 0, 0, 0),
                            ),
                          ],
                          fontSize: 20,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3
                            ..color = const Color(0xffff99cc)),
                    ),
                    // The text inside
                    const Text(
                      'How to use the app?',
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(130, 0, 0, 0),
                          ),
                        ],
                        fontSize: 20,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 7),
                child: Container(
                  width: 320.0,
                  height: 450.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    color: Colors.pink[50],
                    border:
                        Border.all(width: 5, color: const Color(0xffff99cc)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x80000000),
                        blurRadius: 12.0,
                        offset: Offset(0.0, 5.0),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 280,
                        height: 280,
                        child: Image.network(
                          'https://pngimg.com/uploads/chuck_norris/chuck_norris_PNG14.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      const SizedBox.square(
                        dimension: 50,
                      ),
                      Stack(
                        children: [
                          Text(
                            'Here will be a joke',
                            style: TextStyle(
                                shadows: const <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 3.0,
                                    color: Color.fromARGB(130, 0, 0, 0),
                                  ),
                                ],
                                fontSize: 20,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 3
                                  ..color = const Color(0xffff99cc)),
                          ),
                          // The text inside
                          const Text(
                            'Here will be a joke',
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 3.0,
                                  color: Color.fromARGB(130, 0, 0, 0),
                                ),
                              ],
                              fontSize: 20,
                              letterSpacing: 3,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            const SizedBox.square(
              dimension: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.heart_broken_outlined),
                    iconSize: 35,
                    color: const Color(0xffff99cc)),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                  iconSize: 35,
                  color: const Color(0xffff99cc),
                ),
              ],
            ),
            const SizedBox.square(dimension: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Text(
                      'Dislike the joke',
                      style: TextStyle(
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(130, 0, 0, 0),
                            ),
                          ],
                          fontSize: 12,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = const Color(0xffff99cc)),
                    ),
                    const Text(
                      'Dislike the joke',
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(130, 0, 0, 0),
                          ),
                        ],
                        fontSize: 12,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Text(
                      'Like the joke',
                      style: TextStyle(
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(130, 0, 0, 0),
                            ),
                          ],
                          fontSize: 12,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = const Color(0xffff99cc)),
                    ),
                    const Text(
                      'Like the joke',
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(130, 0, 0, 0),
                          ),
                        ],
                        fontSize: 12,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox.square(
              dimension: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/tinder', (route) => false);
                    },
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 18),
                      primary: const Color(0xffff99cc),
                    ),
                    child: const Text('Start')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
