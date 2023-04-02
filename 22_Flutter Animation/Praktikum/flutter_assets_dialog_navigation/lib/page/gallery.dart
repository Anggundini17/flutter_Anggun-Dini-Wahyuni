import 'package:flutter/material.dart';

import '../widget/image_grid.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gallery')),
      body: const ImageGrid(),
    );
  }
}
