import 'package:flutter/material.dart';

import 'package:listview/screen_gridview/gridview.dart';
import 'package:listview/screen_listview/listview_class_model.dart';

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ListViewFlutter(),

      home: GridViewFlutter(),
    );
  }
}
