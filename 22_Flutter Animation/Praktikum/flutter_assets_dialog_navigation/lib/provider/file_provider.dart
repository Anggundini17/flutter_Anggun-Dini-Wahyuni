import 'package:flutter/material.dart';
import 'package:flutter_assets_dialog_navigation/model/file.dart';

class MyFile with ChangeNotifier {
  final List<GetFile> _allFile = [GetFile(title: 'Finance Data', type: 'XLX')];

  List<GetFile> get allFile => _allFile;

  void addFile(GetFile files) {
    _allFile.add(files);
    notifyListeners();
  }

  void removeFile(GetFile files) {
    _allFile.remove(files);
    notifyListeners();
  }
}
