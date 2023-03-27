import 'package:flutter/material.dart';
import 'package:flutter_assets_dialog_navigation/full_image_page.dart';
import 'package:flutter_assets_dialog_navigation/homepage.dart';
import 'package:flutter_assets_dialog_navigation/more_page.dart';

import 'gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery',
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/gallery': (context) => MyGallery(),
        '/morePage': (context) => MorePage(),
      },
      // home: MyGallery(),
      // home: HomePage(),
    );
  }
}
