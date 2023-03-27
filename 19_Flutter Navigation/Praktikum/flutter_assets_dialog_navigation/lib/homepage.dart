import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 25.0, left: 25.0, right: 25.0, bottom: 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Hi Sunshine!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.sunny,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 1, left: 25.0, right: 25.0, bottom: 25.0),
              child: Text(
                textAlign: TextAlign.justify,
                "Welcome to your favorite files! This is the place where you can access all of your most important and cherished documents with just a few clicks. Whether it's photos, music, or important work files, you can keep them all in one convenient location for easy access whenever you need them.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/morePage',
                              arguments: 'My Folder');
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.folder_open,
                              size: 100,
                              color: Colors.orange,
                            ),
                            Text(
                              'My Folder',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/gallery');
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.photo,
                              size: 100,
                              color: Colors.redAccent,
                            ),
                            Text(
                              'My Gallery',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/morePage',
                              arguments: 'My Book');
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.book,
                              size: 100,
                              color: Colors.brown,
                            ),
                            Text(
                              'My Book',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/morePage',
                              arguments: 'My Music');
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.queue_music,
                              size: 100,
                              color: Colors.blueAccent,
                            ),
                            Text(
                              'My Music',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/morePage',
                              arguments: 'My Games');
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.games,
                              size: 100,
                            ),
                            Text(
                              'My Games',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/morePage',
                              arguments: 'My Apps');
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.apps,
                              size: 100,
                              color: Colors.green,
                            ),
                            Text(
                              'My Apps',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
