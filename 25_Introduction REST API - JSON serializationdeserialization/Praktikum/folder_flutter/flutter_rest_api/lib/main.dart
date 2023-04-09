import 'package:flutter/material.dart';

import 'page/my_hompage.dart';
import 'page/picture_by_seed_page.dart';
import 'page/picture_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intro and Advance REST API',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/imagePage': (context) => const ImagePage(),
        '/imageSeed': (context) => const ImageBySeedPage(),
        // '/imagePage': (context) => const ImagePage()
      },
      // home: HomePagePrioritas1(),
      // home: ImagePage(),
    );
  }
}
