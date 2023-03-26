import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../theme/theme.dart';
import 'contact_class.dart';

import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';

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
    Contact(name: 'Jamal', phone: '+62827262', color: ThemeColor.greyPurple),
    Contact(name: 'Taeyong', phone: '+62827264', color: ThemeColor.greyPurple),
    Contact(name: 'Mark', phone: '+62827263', color: ThemeColor.greyPurple),
  ];

  bool isEditing = false;
  int? selectedIndex;

  // //Validasi Menggunakan RegExp
  RegExp isNotAlphabet = RegExp(r"^[A-Z][a-zA-Z]*(([\s])[A-Z][a-zA-Z]*)*$");
  RegExp isSpecificWord = RegExp(r'\b[A-Z][a-z]+\s[A-Z][a-z]+\b');

  RegExp isNumber = RegExp(r'^[0-9]+$');

  //Inisialisasi variabel untuk DatePicker, ColorPicker, dan FilePicker
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = ThemeColor.purple;
  File? _image;

  //Memasukkan Data
  void _save() {
    log('Data Input');
    log('Contact Name : ${_nameController.text}');
    log('Phone Number : ${_phoneController.text}');
    log('Date Pick : $_dueDate');
    log('Color Pick: $_currentColor');
    log('Image : $_image');
    // log('File Pick : $image');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(
            top: 1.0, left: 30.0, right: 30.0, bottom: 35),
        child: Column(
          children: <Widget>[
            //Form untuk Nama Kontak
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
            const SizedBox(height: 15),

            //Form untuk Nomor Kontak
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

            //Implementasi Widget DatePicker, ColorPicker, dan FilePicker
            const SizedBox(height: 15),
            buildDatePicker(context),
            const SizedBox(height: 15),
            buildColorPicker(context),
            const SizedBox(height: 15),
            buildFilePicker(context),
            const SizedBox(height: 15),

            //Button Submit
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
                          _save();
                          if (isEditing == false) {
                            listContact.add(Contact(
                                name: _nameController.text,
                                phone: _phoneController.text,
                                color: _currentColor));
                          } else {
                            listContact[selectedIndex!].name =
                                _nameController.text;
                            listContact[selectedIndex!].phone =
                                _phoneController.text;
                            listContact[selectedIndex!].color = _currentColor;

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
            const SizedBox(height: 35),

            //Menampilkan List Kontak
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
                        backgroundColor: listContact[index].color,
                        child: Text(listContact[index].name[0],
                            style: const TextStyle(
                                color: ThemeColor.purplePrimary,
                                fontWeight: FontWeight.bold)),
                      ),
                      title: Row(
                        children: [
                          Text(
                            listContact[index].name,
                            style: const TextStyle(
                                color: ThemeColor.titleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(width: 5),
                          // const CircleAvatar(radius: 5),
                        ],
                      ),
                      subtitle: Text(listContact[index].phone),
                      // title: Text(listContact.name),
                    );
                  },
                ),
                const Text(
                  'History',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: ThemeColor.titleColor),
                ),
                Row(
                  children: [
                    Text(DateFormat('dd-MM-yyyy').format(_dueDate),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Container(
      color: ThemeColor.greyPurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Date',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.calendar_month,
                  size: 25.0,
                  color: ThemeColor.purple,
                ),
                onPressed: () async {
                  final selectDate = await showDatePicker(
                      context: context,
                      initialDate: currentDate,
                      firstDate: DateTime(1997),
                      lastDate: DateTime(currentDate.year + 5));
                  setState(() {
                    if (selectDate != null) {
                      _dueDate = selectDate;
                    }
                  });
                },
                // child: const Text('Select')
              )
            ],
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 10.0, right: 10.0, top: 0.7, bottom: 2),
            child: Divider(
              thickness: 0.5,
              height: 1.0,
              color: ThemeColor.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              DateFormat('dd-MM-yyyy').format(_dueDate),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Color',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            IconButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_currentColor)),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Pick Your Color'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: _currentColor,
                            onColorChanged: (color) {
                              setState(() {
                                _currentColor = color;
                              });
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Save'),
                          ),
                        ],
                      );
                    });
              },
              icon: const Icon(
                Icons.color_lens,
                color: ThemeColor.purple,
              ),
              // child: const Text('Pick Color')
            )
          ],
        ),
        const SizedBox(height: 5),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget buildFilePicker(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Pick Files',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 100,
        width: double.infinity,
        color: ThemeColor.greyPurple,
        child: IconButton(
          onPressed: () {
            _pickFile();
          },
          icon: const Icon(
            Icons.add_box,
            size: 40,
            color: ThemeColor.grey,
          ),
        ),
      ),
    ]);
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) {
      return;
    }

    final file = result.files.first;
    _openFile(file);
    setState(() {
      _image = File(result.paths.first.toString());
    });
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
    // final ImagePicker _picker = ImagePicker();
    // image = file.name;
    // log(image);
  }
}
