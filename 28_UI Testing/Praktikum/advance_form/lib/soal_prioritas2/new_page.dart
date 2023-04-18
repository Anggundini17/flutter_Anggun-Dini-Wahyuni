import 'package:flutter/material.dart';

class MyNewPage extends StatelessWidget {
  const MyNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Sunshine'),
          centerTitle: true,
          backgroundColor: Colors.pink),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: const [
                  Text(
                    'Welcome, My Sunshine!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      // color: Colors.amber
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.sunny,
                    size: 40.0,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            const Card(
              child: Icon(
                Icons.attractions,
                size: 400.0,
                color: Colors.deepPurple,

                // height: 100,
                // width: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                'Lets Go To Holiday!',
                textAlign: TextAlign.justify,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                style: TextStyle(fontSize: 16),
                'Taking a holiday can make your day shine with happiness and excitement, as you immerse yourself in new experiences, cultures, and surroundings, leaving behind the stress and routine of everyday life.',
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      )),
    );
  }
}
