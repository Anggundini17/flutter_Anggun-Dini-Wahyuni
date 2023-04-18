import 'package:advance_form/soal_prioritas2/new_page.dart';

import './soal_prioritas1/my_contact.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advance User Input',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyContact(),
        '/newPage': (context) => const MyNewPage(),
        // '/imageSeed': (context) => const ImageBySeedPage(),
        // '/imagePage': (context) => const ImagePage()
      },

      //Soal Prioritas 1
      // home: const HomePage(),

      //Soal Prioritas 2
      // home: MyContact(),
      // home: MyNewPage(),
    );
  }
}
