import 'package:flutter/material.dart';
import 'package:listview/class/data_list.dart';
import 'dart:convert';

class ListViewFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON ListView In Flutter'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          final contact = Data.fromJson(data[index]);
          return ListTile(
            title: Text(contact.username),
            subtitle: Text(contact.phone),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                contact.username[0],
                style: TextStyle(color: Colors.white),
                // selectionColor: Colors.white,
              ),
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
