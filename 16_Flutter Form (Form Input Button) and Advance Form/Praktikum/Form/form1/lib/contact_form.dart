import 'dart:developer';

import 'package:flutter/material.dart';

import 'contact_list_widget.dart';
import 'theme.dart';

class FormContact extends StatefulWidget {
  const FormContact({super.key});

  @override
  State<FormContact> createState() => _FormContactState();
}

class _FormContactState extends State<FormContact> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  List<Contact> listContact = [
    Contact(name: 'Jamal', phone: '+62827262'),
    Contact(name: 'Taeyong', phone: '+62827264'),
    Contact(name: 'Mark', phone: '+62827263'),
  ];

  bool isEditing = false;
  int? selectedIndex;

  // //Validasi Menggunakan RegExp
  RegExp isNotAlphabet = RegExp(r"^[A-Z][a-zA-Z]*(([\s])[A-Z][a-zA-Z]*)*$");
  RegExp isSpecificWord = RegExp(r'\b[A-Z][a-z]+\s[A-Z][a-z]+\b');

  RegExp isNumber = RegExp(r'^[0-9]+$');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(top: 1.0, left: 30.0, right: 30.0, bottom: 35),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please insert the name's contact";
                } else if (!isNotAlphabet.hasMatch(value)) {
                  return "Dont use a character!";
                } else if (!isSpecificWord.hasMatch(value)) {
                  return "Insert at least 2 words and start with a capital letter!";
                }
                return null;
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
                hintText: "Insert a New Contact's Name",
                hintStyle: TextStyle(
                    color: ThemeColor.grey, fontWeight: FontWeight.normal),
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: _phoneController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please insert the phone number";
                } else if (!isNumber.hasMatch(value)) {
                  return "Enter the valid phone number!";
                } else if (!(value[0] == "0" &&
                    value.length >= 8 &&
                    value.length <= 15)) {
                  return "Please enter 8-15 digit phone number and start with 0!";
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: ThemeColor.greyPurple,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ThemeColor.purple)),
                labelStyle: TextStyle(color: ThemeColor.grey),
                // labelStyle: TextStyle(color: ),
                hintText: "+62...",
                hintStyle: TextStyle(
                    color: ThemeColor.grey, fontWeight: FontWeight.normal),
                labelText: 'Phone Number',
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
                        setState(() {
                          if (isEditing == false) {
                            listContact.add(Contact(
                                name: _nameController.text,
                                phone: _phoneController.text));
                          } else {
                            listContact[selectedIndex!].name =
                                _nameController.text;
                            listContact[selectedIndex!].phone =
                                _phoneController.text;

                            isEditing = false;
                          }
                        });
                        _nameController.clear();
                        _phoneController.clear();
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'List Contacts',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: ThemeColor.titleColor),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: listContact.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      trailing: Wrap(
                        spacing: 0.2,
                        alignment: WrapAlignment.end,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _nameController.text = listContact[index].name;
                                _phoneController.text =
                                    listContact[index].phone;
                                isEditing = true;
                                selectedIndex = index;
                              });
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                listContact.remove(listContact[index]);
                              });
                            },
                          ),
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundColor: ThemeColor.bgColorAvatar,
                        child: Text(listContact[index].name[0],
                            style: const TextStyle(
                                color: ThemeColor.purplePrimary,
                                fontWeight: FontWeight.bold)),
                      ),
                      title: Text(
                        listContact[index].name,
                        style: const TextStyle(
                            color: ThemeColor.titleColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      subtitle: Text(listContact[index].phone),
                      // title: Text(listContact.name),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
