import 'package:flutter/material.dart';

import 'full_image_page.dart';

class ViewImageBottomSheet extends StatelessWidget {
  final String picture;
  const ViewImageBottomSheet({Key? key, required this.picture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1500,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Full Image'),
              content: const Text('Do you want to open full image?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('Yes'),
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
