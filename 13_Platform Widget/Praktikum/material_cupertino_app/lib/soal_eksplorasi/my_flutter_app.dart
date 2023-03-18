import 'package:flutter/material.dart';
import '../class/learn_course.dart';

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Color.fromRGBO(214, 189, 251, 1),
          )
        ],
      ),

      //TAMPILAN BODY MENGGUNAKAN WIDGET LIST VIEW
      body: ListView.separated(
        itemCount: learning.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(learning[index].name),
            onTap: () {},
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 0.1,
            color: Colors.black,
          );
        },
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.info_rounded), label: 'Information'),
      ]),
    );
  }
}
