import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteJokes extends StatefulWidget {
  const FavoriteJokes({Key? key}) : super(key: key);

  @override
  State<FavoriteJokes> createState() => _FavoriteJokesState();
}

class _FavoriteJokesState extends State<FavoriteJokes> {
  final CollectionReference _favJokes =
      FirebaseFirestore.instance.collection('favoriteJokes');
  void remove(String id) async {
    await _favJokes.doc(id).delete();
  }

  void _showDialog(String id) {
    Future.delayed(const Duration(microseconds: 10), () {
      showDialog(
          context: context,
          builder: (_) => SimpleDialog(
                title: Text(
                  'del'.tr,
                  style: TextStyle(fontSize: 25, color: Color(0xffff99cc)),
                ),
                contentPadding: EdgeInsets.all(25),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          remove(id);
                          Navigator.pop(context);
                        },
                        child: Container(
                          //margin: EdgeInsets.all(10),
                          width: 25,
                          height: 20,
                          color: Color(0xffff99cc),
                          child: Center(
                            child: Text('yes'.tr),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffff99cc)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          color: Color(0xffff99cc),
                          width: 25,
                          height: 20,
                          child: Center(
                            child: Text('no'.tr),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffff99cc)),
                      )
                    ],
                  )
                ],
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff99cc),
          title: Text('fav'.tr),
          titleTextStyle: const TextStyle(fontSize: 20, shadows: <Shadow>[
            Shadow(
              offset: Offset(2.0, 2.0),
              blurRadius: 3.0,
              color: Color.fromARGB(130, 0, 0, 0),
            ),
          ]),
          centerTitle: true,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance
              .collection('favoriteJokes')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return Text('Error');
            if (snapshot.hasData) {
              final docs = snapshot.data!.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (BuildContext context, int index) {
                  final DocumentSnapshot documentSnapshot =
                      snapshot.data!.docs[index];
                  final data = docs[index].data();
                  return Dismissible(
                    key: Key(data['id']),
                    child: Card(
                      child: ListTile(
                        title: Text(data['value']),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Color(0xffff99cc),
                          ),
                          onPressed: () {
                            _showDialog(documentSnapshot.id);
                            // setState(() {
                            //   favorite_list.removeAt(index);
                            // });
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
