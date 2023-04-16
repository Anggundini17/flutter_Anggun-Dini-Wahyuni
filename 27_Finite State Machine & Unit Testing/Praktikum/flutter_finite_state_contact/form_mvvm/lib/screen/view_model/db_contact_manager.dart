import 'package:flutter/material.dart';
import 'package:form1/models/contact_models.dart';

import '../../models/helper/database_helper.dart';

enum ContactViewState {
  none,
  loaded,
  loading,
  error,
}

class DatabaseManager extends ChangeNotifier {
  ContactViewState _state = ContactViewState.none;
  ContactViewState get state => _state;

  List<Contact> _getContacts = [];
  late DatabaseHelper _dbHelper;

  List<Contact> get getContacts => _getContacts;

  DatabaseManager() {
    _dbHelper = DatabaseHelper();
    _getAllContacts();
  }

  changeState(ContactViewState contactViewState) {
    _state = contactViewState;
    notifyListeners();
  }

  void _getAllContacts() async {
    changeState(ContactViewState.loading);
    try {
      _getContacts = await _dbHelper.readContact();
      changeState(ContactViewState.loaded);
      notifyListeners();
    } catch (e) {
      changeState(ContactViewState.error);
      notifyListeners();
    }
  }

  Future<void> addContact(Contact getContact) async {
    changeState(ContactViewState.loading);
    try {
      await _dbHelper.insertContact(getContact);
      _getAllContacts();
      notifyListeners();
      ContactViewState.loaded;
    } catch (e) {
      ContactViewState.error;
    }
  }

  void updateContacts(Contact getContact) async {
    changeState(ContactViewState.loading);
    try {
      await _dbHelper.updateContact(getContact);
      _getAllContacts();
      // notifyListeners();
      ContactViewState.loaded;
    } catch (e) {
      ContactViewState.error;
    }
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
