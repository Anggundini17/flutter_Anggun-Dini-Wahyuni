import 'package:flutter/material.dart';

class Images with ChangeNotifier {
  final List<String> _allImage = [
    'assets/image1.jpg',
    'assets/image1.jpg',
    'assets/image1.jpg',
    'assets/image1.jpg',
    'assets/image2.png',
    'assets/image2.png',
    'assets/image2.png',
    'assets/image2.png',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg',
    'assets/image6.jpg',
    'assets/image6.jpg',
    'assets/image6.jpg',
    'assets/image6.jpg',
  ];

  List<String> get allImage => _allImage;
}
