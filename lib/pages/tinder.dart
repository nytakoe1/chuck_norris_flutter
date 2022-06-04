import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class TinderScreen extends StatefulWidget {
  const TinderScreen({Key? key}) : super(key: key);

  @override
  State<TinderScreen> createState() => _TinderScreenState();
}

class _TinderScreenState extends State<TinderScreen> {
  String textOfJoke = 'Tap to get a joke';
  String imagePath = 'assets/images/chuck_norris_1.png';
  void _getJoke() async {
    Random r = Random();
    Dio dio = Dio();
    var num = (r.nextInt(9) + 1).toString();
    Response response =
        await dio.get("https://api.chucknorris.io/jokes/random");
    setState(() {
      textOfJoke = response.data['value'];
      imagePath = 'assets/images/chuck_norris_$num.png';
    });
  }

  void _showDialog() {
    Future.delayed(const Duration(microseconds: 10), () {
      showDialog(
          context: context,
          builder: (_) => const SimpleDialog(
                title: Text(
                  'Are you serious?',
                  style: TextStyle(fontSize: 25, color: Color(0xffff99cc)),
                ),
                contentPadding: EdgeInsets.all(25),
                children: [
                  Text(
                    'In case you did not know, Chuck Norris can not be disliked!',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffff99cc),
                    ),
                  )
                ],
              ));
    });
  }

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
              dimension: 50,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 70, left: 7),
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
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      const SizedBox.square(
                        dimension: 2,
                      ),
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        width: 300,
                        padding: const EdgeInsets.all(3.0),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: const Color(0xffff99cc),
                            width: 1.0,
                          ),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            textOfJoke,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffff99cc),
                            ),
                          ),
                        ),
                      ),
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
                    onPressed: () {
                      _showDialog();
                    },
                    icon: const Icon(Icons.heart_broken_outlined),
                    iconSize: 35,
                    color: const Color(0xffff99cc)),
                IconButton(
                  onPressed: () {
                    _getJoke();
                  },
                  icon: const Icon(Icons.favorite_border_outlined),
                  iconSize: 35,
                  color: const Color(0xffff99cc),
                ),
              ],
            ),
            const SizedBox.square(
              dimension: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/firstTip');
                    },
                    icon: const Icon(Icons.help_outline_outlined),
                    iconSize: 35,
                    color: const Color(0xffff99cc))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
