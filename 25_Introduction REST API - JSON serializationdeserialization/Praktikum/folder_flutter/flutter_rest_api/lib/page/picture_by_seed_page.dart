import 'package:flutter/material.dart';

import '../service_api/service.dart';

class ImageBySeedPage extends StatefulWidget {
  const ImageBySeedPage({super.key});

  @override
  State<ImageBySeedPage> createState() => _ImageBySeedPageState();
}

class _ImageBySeedPageState extends State<ImageBySeedPage> {
  final formKey = GlobalKey<FormState>();

  final _seedImageController = TextEditingController();
  String? imageSeed;
  String result = "";
  final service = ServiceApi();

  @override
  Widget build(BuildContext context) {
    // final serviceImage = service.fetchImage;
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Image By Seed'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'GET IMAGE BY SEED',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                'You can show the image by seed name, so enter the seed name below!',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            formImageSeed(context),
            buttonWidget(context),
            Center(
              child: Container(
                height: 350,
                width: 350,
                child: FutureBuilder(
                  future: service.fetchImageBySeed(
                      "https://api.dicebear.com/6.x/pixel-art/svg?seed=$imageSeed"),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return snapshot.data!;
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget formImageSeed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    controller: _seedImageController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        hintText: 'Insert your Name'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget buttonWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              // minWidth: 400,

              child: const Text(
                "Genenerate to Image",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                imageSeed = _seedImageController.text;

                _seedImageController.clear();

                setState(() {});
              }),
        ],
      ),
    );
  }
}
