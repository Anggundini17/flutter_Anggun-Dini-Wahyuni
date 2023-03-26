import 'package:advance_form/soal_prioritas2/my_contact.dart';
import 'package:advance_form/theme/theme.dart';

import 'package:flutter/material.dart';

import 'soal_prioritas1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advance User Input',

      //Soal Prioritas 1
      // home: const HomePage(),

      //Soal Prioritas 2
      home: MyContact(),
    );
  }
}
