import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:form1/theme.dart';

import 'contact_form.dart';

class MyContact extends StatefulWidget {
  const MyContact({super.key});

  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
  // final _formKey = GlobalKey();

  // final _nameController = TextEditingController();
  // final _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
          backgroundColor: ThemeColor.purple,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 35, bottom: 10),
                  child: Icon(
                    Icons.phone_android,
                    size: 40.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'Create New Contacts',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: ThemeColor.titleColor),
                  ),
                ),
                Padding(
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
                FormContact()
              ],
            ),
          ),
        ));
  }
}
