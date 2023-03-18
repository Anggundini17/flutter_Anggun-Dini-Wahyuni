import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino App'),
      ),
      child: const Center(child: Text('This is a Cupertino App Body')),
    );
  }
}
