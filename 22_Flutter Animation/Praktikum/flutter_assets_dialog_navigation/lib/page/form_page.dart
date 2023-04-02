import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../widget/file_form.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add File')),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 35, bottom: 10),
            child: Icon(
              Icons.add_task,
              size: 40.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              'Add Folder',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: ThemeColor.titleColor),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 16.0, left: 30.0, right: 30.0, bottom: 40),
            child: Text(
              "Adding a folder is a simple process, just click on the icon 'Add/Plus' button and give it a name to create a new folder",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: ThemeColor.grey),
              textAlign: TextAlign.justify,
            ),
          ),
          FormFile(),
        ],
      )),
    );
  }
}
