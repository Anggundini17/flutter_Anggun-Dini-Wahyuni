import 'package:flutter/material.dart';
import 'package:form1/theme.dart';

import 'package:provider/provider.dart';
import '../models/contact_models.dart';
import '../provider/db_contact_manager.dart';

class MyContact extends StatefulWidget {
  final Contact? getContact;
  const MyContact({super.key, this.getContact});

  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
  @override
  void initState() {
    super.initState();

    loadedData();
  }

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  // List<Contact> listContact = [
  //   Contact(name: 'Jamal', phone: '+62827262'),
  //   Contact(name: 'Taeyong', phone: '+62827264'),
  //   Contact(name: 'Mark', phone: '+62827263'),
  // ];

  bool isEditing = false;
  int? selectedIndex;

  // //Validasi Menggunakan RegExp
  RegExp isNotAlphabet = RegExp(r"^[A-Z][a-zA-Z]*(([\s])[A-Z][a-zA-Z]*)*$");
  RegExp isSpecificWord = RegExp(r'\b[A-Z][a-z]+\s[A-Z][a-z]+\b');

  RegExp isNumber = RegExp(r'^[0-9]+$');

  void loadedData() {
    if (widget.getContact != null) {
      _nameController.text = widget.getContact!.name;
      _phoneController.text = widget.getContact!.phone;
      isEditing = true;
    }
  }

  // final _formKey = GlobalKey();

  // final _nameController = TextEditingController();
  // final _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
          // actions: <Widget>[
          //   IconButton(
          //       onPressed: () {
          //         loginData.setBool('login', true);
          //         loginData.remove('username');
          //         Navigator.pushReplacementNamed(context, '/');
          //         // Navigator.pushNamed(
          //         //   context,
          //         //   '/form',

          //         // );
          //       },
          //       icon: const Icon(Icons.logout))
          // ],
          backgroundColor: ThemeColor.purple,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 35, bottom: 10),
                  child: Icon(
                    Icons.phone_android,
                    size: 40.0,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'Create New Contacts',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: ThemeColor.titleColor),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, left: 30.0, right: 30.0, bottom: 40),
                  child: Text(
                    'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: ThemeColor.grey),
                    textAlign: TextAlign.justify,
                  ),
                ),
                //Menampilkan Form Contact
                formContact()
              ],
            ),
          ),
        ));
  }

  Widget formContact() {
    return Form(
      key: _formKey,
      child: Padding(
          padding:
              EdgeInsets.only(top: 1.0, left: 30.0, right: 30.0, bottom: 35),
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
                        fixedSize:
                            MaterialStateProperty.all(const Size(94, 40)),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (!isEditing) {
                            final contact = Contact(
                                name: _nameController.text,
                                phone: _phoneController.text);
                            Provider.of<DatabaseManager>(context, listen: false)
                                .addContact(contact);
                          } else {
                            final contact = Contact(
                                id: widget.getContact!.id,
                                name: _nameController.text,
                                phone: _phoneController.text);
                            Provider.of<DatabaseManager>(context, listen: false)
                                .updateContacts(contact);
                          }
                          // _nameController.clear();
                          // _phoneController.clear();
                          // dispose();
                          Navigator.of(context).pop(context);
                          //
                        } else {
                          return print('Not Valid');
                        }
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
              // ListContactPage()
            ],
          )),
    );
  }
}
