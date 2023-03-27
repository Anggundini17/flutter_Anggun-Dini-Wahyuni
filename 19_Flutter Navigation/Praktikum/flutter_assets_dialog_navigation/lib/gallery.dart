import 'package:flutter/material.dart';

import 'full_image_page.dart';

class MyGallery extends StatelessWidget {
  MyGallery({super.key});

  final List<String> images = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
      body: Center(
          child: GridView.builder(
              itemCount: images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) =>
                              ViewImageBottomSheet(picture: images[index]));
                    },
                    child: Card(
                      child: Image.asset(
                        images[index],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}

class ViewImageBottomSheet extends StatelessWidget {
  final String picture;
  const ViewImageBottomSheet({Key? key, required this.picture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Full Image'),
              content: Text('Do you want to open full image?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('Yes'),
                ),
              ],
            ),
          ).then(
            (value) {
              if (value == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullImagePage(image: picture),
                  ),
                );
              }
            },
          );
        },
        child: Image.asset(
          picture,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
