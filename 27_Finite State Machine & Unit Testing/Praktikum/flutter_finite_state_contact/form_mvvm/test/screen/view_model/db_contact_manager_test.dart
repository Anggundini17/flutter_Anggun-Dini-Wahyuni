import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:form1/models/contact_models.dart';
import 'package:form1/models/helper/database_helper.dart';
import 'package:form1/screen/view_model/db_contact_manager.dart';

void main() {
  group('ContactProvider', () {
    late DatabaseManager dbManager;
    late DatabaseHelper dbHelper;

    setUp(() {
      dbManager = DatabaseManager();
      dbHelper = DatabaseHelper();
    });

    test(
        'getContact akan mereturn list kosong ketika tidak ada data kontak yang ditambahkan',
        () async {
      final contacts = dbManager.getContacts;
      expect(contacts.isEmpty, true);
    });

    // test('addContact should add a contact to the database', () async {
    //   // Arrange
    //   final contact = Contact(name: 'John', phone: '1234567890');

    //   // Act
    //   await dbManager.addContact(contact);

    //   // Assert
    //   final contacts = await dbHelper.readContact();
    //   expect(contacts.contains(contact), true);
    // });

    // test('addContact akan menambahkan datanya ke database', () async {
    //   final contact = Contact(name: 'Jaehyun Wijaya', phone: '08128918291');
    //   await dbManager.addContact(contact);
    //   expect(dbManager.getContacts.length, 1);
    // });
  });
}
