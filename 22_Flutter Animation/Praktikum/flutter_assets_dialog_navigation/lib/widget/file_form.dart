import 'package:flutter/material.dart';
import 'package:flutter_assets_dialog_navigation/provider/file_provider.dart';
import 'package:provider/provider.dart';

import '../model/file.dart';
import '../theme/theme.dart';

class FormFile extends StatefulWidget {
  const FormFile({super.key});

  @override
  State<FormFile> createState() => _FormFileState();
}

class _FormFileState extends State<FormFile> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String tipe = '';

  final nameController = TextEditingController();
  final typeController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    typeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(top: 1.0, left: 30.0, right: 30.0, bottom: 35),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: nameController,
              onChanged: (String value) {
                name = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please insert the name folder";
                }
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: ThemeColor.greyPurple,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ThemeColor.purple)),
                focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                labelStyle: TextStyle(color: ThemeColor.grey),
                // labelStyle: TextStyle(color: ),
                hintText: "Insert a New Folder's Name",
                hintStyle: TextStyle(
                    color: ThemeColor.grey, fontWeight: FontWeight.normal),
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: typeController,
              onChanged: (String value) {
                tipe = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please insert the type file";
                }
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: ThemeColor.greyPurple,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ThemeColor.purple)),
                labelStyle: TextStyle(color: ThemeColor.grey),
                // labelStyle: TextStyle(color: ),
                hintText: "File Type",
                hintStyle: TextStyle(
                    color: ThemeColor.grey, fontWeight: FontWeight.normal),
                labelText: 'Type',
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ThemeColor.purple),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                      fixedSize: MaterialStateProperty.all(const Size(94, 40)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final files = GetFile(
                            title: nameController.text.trim(),
                            type: typeController.text.trim());
                        Provider.of<MyFile>(context, listen: false)
                            .addFile(files);
                        Navigator.of(context).pop(files);
                        nameController.clear();
                        typeController.clear();
                      } else {
                        return print('Not Valid');
                      }
                      //
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
