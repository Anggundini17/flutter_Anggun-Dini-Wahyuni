import 'package:flutter/material.dart';
import 'package:form1/models/contact_models.dart';

import '../helper/database_helper.dart';

class DatabaseManager extends ChangeNotifier {
  List<Contact> _getContacts = [];
  late DatabaseHelper _dbHelper;

  List<Contact> get getContacts => _getContacts;

  DatabaseManager() {
    _dbHelper = DatabaseHelper();
    _getAllContacts();
  }

  void _getAllContacts() async {
    _getContacts = await _dbHelper.readContact();
    notifyListeners();
  }

  Future<void> addContact(Contact getContact) async {
    await _dbHelper.insertContact(getContact);
    _getAllContacts();
    notifyListeners();
  }

  void updateContacts(Contact getContact) async {
    await _dbHelper.updateContact(getContact);
    _getAllContacts();
    // notifyListeners();
  }

  Future<Contact> getContactById(int id) async {
    return await _dbHelper.getContactById(id);
    // notifyListeners();
  }

  void deleteContacts(int id) async {
    await _dbHelper.deleteContact(id);
    _getAllContacts();
  }
}
