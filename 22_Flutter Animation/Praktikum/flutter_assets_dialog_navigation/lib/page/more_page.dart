import "package:flutter/material.dart";
import 'package:flutter_assets_dialog_navigation/page/form_page.dart';
import 'package:flutter_assets_dialog_navigation/provider/file_provider.dart';

import 'package:provider/provider.dart';

import '../theme/theme.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const MyForm(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
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
                // Navigator.pushNamed(
                //   context,
                //   '/form',

                // );
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'List Folder',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ThemeColor.titleColor),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Consumer<MyFile>(builder: (context, fileProvider, child) {
                    final file = fileProvider.allFile;
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: file.length,
                      itemBuilder: (context, index) {
                        final fileData = file[index];
                        return ListTile(
                          trailing: Wrap(
                            spacing: 0.2,
                            alignment: WrapAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  fileProvider.removeFile(fileData);
                                  // setState(() {
                                  //   listFile.remove(listFile[index]);
                                  // });
                                },
                              ),
                            ],
                          ),
                          leading: const Icon(
                            Icons.folder,
                            size: 45,
                          ),

                          title: Text(
                            fileData.title,
                            style: const TextStyle(
                                color: ThemeColor.titleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                          subtitle: Text(fileData.type),
                          // title: Text(listFile.name),
                        );
                      },
                    );
                  })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
