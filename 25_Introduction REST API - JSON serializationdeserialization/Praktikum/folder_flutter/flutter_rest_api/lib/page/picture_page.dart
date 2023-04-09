import 'package:flutter/material.dart';

import '../service_api/service.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = ServiceApi();
    // final serviceImage = service.fetchImage;
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Image'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/imageSeed');
              },
              icon: Icon(Icons.catching_pokemon))
        ],
      ),
      body: Center(
        child: FutureBuilder(
          future: service.fetchImage("https://api.dicebear.com/6.x/bottts/svg"),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return snapshot.data!;
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
