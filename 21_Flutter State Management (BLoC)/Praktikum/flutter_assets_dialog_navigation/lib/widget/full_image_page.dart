import 'package:flutter/material.dart';

class FullImagePage extends StatelessWidget {
  final String image;
  const FullImagePage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Image'),
        // centerTitle: true,
      ),
      body: Center(
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
