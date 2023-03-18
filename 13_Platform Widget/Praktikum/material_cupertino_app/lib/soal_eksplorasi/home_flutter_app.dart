import 'package:flutter/material.dart';
import 'package:material_cupertino_app/soal_eksplorasi/my_flutter_app.dart';

class MyFlutterAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromRGBO(98, 0, 238, 1)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(98, 0, 238, 1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromRGBO(214, 189, 251, 1),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            foregroundColor: Colors.black,
            backgroundColor: Color.fromRGBO(3, 218, 197, 1)),
      ),
      home: MyFlutterApp(),
    );
  }
}
