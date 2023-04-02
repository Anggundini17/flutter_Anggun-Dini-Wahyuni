import 'package:flutter/material.dart';
import 'package:flutter_assets_dialog_navigation/page/form_page.dart';
import 'package:flutter_assets_dialog_navigation/page/homepage.dart';
import 'package:flutter_assets_dialog_navigation/page/more_page.dart';

import 'package:flutter_assets_dialog_navigation/provider/file_provider.dart';
import 'package:provider/provider.dart';

import 'page/gallery.dart';
import 'provider/image_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Images()),
        ChangeNotifierProvider(create: (context) => MyFile())
        // ChangeNotifierProvider(create: (context) => Provider2()),
      ],
      child: MaterialApp(
        title: 'Gallery',
        theme: ThemeData(primarySwatch: Colors.purple),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/gallery': (context) => const MyGallery(),
          '/morePage': (context) => const MorePage(),
          '/form': (context) => const MyForm(),
        },

        // home: MyGallery(),
        // home: HomePage(),
      ),
    );
  }
}
