import "package:flutter/material.dart";
import 'package:flutter_assets_dialog_navigation/page/gallery.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
                          Navigator.pushNamed(context, '/contact',
                              arguments: 'My Contact');
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.contact_phone,
                              size: 100,
                              color: Colors.green,
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
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const MyGallery(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(0.5, 0.5);
                              const end = Offset.zero;
                              const curve = Curves.ease;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                          ));
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
                              arguments: 'My Video');
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.play_circle,
                              size: 100,
                              color: Colors.green,
                            ),
                            Text(
                              'My Video',
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
