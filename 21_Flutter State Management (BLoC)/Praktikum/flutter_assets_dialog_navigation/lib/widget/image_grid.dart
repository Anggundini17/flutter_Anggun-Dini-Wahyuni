import 'package:flutter/material.dart';

import '../provider/image_provider.dart';
import 'view_image_bottom_sheet.dart';
import 'package:provider/provider.dart';

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final imageData = Provider.of<Images>(context);

    final imageList = imageData.allImage;
    return Center(
        child: GridView.builder(
            itemCount: imageList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => ViewImageBottomSheet(
                              picture: imageList[index],
                            ));
                  },
                  child: Card(
                    child: Image.asset(
                      imageList[index],
                    ),
                  ),
                ),
              );
            }));
  }
}
