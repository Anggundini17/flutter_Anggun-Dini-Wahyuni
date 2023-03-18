import 'package:flutter/cupertino.dart';
import 'cupertino_page.dart';

class MyNewAppCupertino extends StatelessWidget {
  final _themeDart = const CupertinoThemeData.raw(
    Brightness.dark,
    null,
    null,
    null,
    null,
    null,
  );
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: _themeDart,
      home: CupertinoHomePage(),
      // home: MaterialHomePage(),
    );
  }
}
