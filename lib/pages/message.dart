import 'package:first_draft/pages/menu_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';

class CreatorMessages extends StatefulWidget {
  const CreatorMessages({Key? key}) : super(key: key);

  @override
  State<CreatorMessages> createState() => _CreatorMessagesState();
}

class _CreatorMessagesState extends State<CreatorMessages> {
  final List<String> _items1 = [];
  final List<String> _items = [
    'firstMes'.tr,
    'secondMes'.tr,
    'thirdMes'.tr,
    'fourthMes'.tr
  ];

  int i = 0;
  void _addItem() {
    if (i < 4) {
      setState(() {
        _items1.add(_items[i]);
        _items[i];
        i++;
      });
    }
  }

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      _addItem();
    });
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MenuScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffff99cc),
        title: Text('creator'.tr),
        titleTextStyle: const TextStyle(fontSize: 20, shadows: <Shadow>[
          Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 3.0,
            color: Color.fromARGB(130, 0, 0, 0),
          ),
        ]),
        centerTitle: true,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.black12,
              backgroundImage: NetworkImage(
                  'https://c.tenor.com/n_iyW_O2YOUAAAAM/popcat-cat.gif'),
              radius: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: _items1.length,
          itemBuilder: (_, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox.square(
                  dimension: 10,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0xff33ccff),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x80000000),
                          blurRadius: 12.0,
                          offset: Offset(0.0, 5.0),
                        ),
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff33ccff),
                          Color(0xffff99cc),
                        ],
                      )),
                  child: Text(_items1[index],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(130, 0, 0, 0),
                            ),
                          ])),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
