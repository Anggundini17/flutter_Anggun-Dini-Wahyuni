import 'package:flutter/material.dart';
import 'package:material_cupertino_app/soal_eksplorasi/my_flutter_app.dart';

import 'material_page.dart';

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Soal Prioritas 1
      theme: ThemeData.dark(),
      home: MaterialHomePage(),
    );
  }
}
