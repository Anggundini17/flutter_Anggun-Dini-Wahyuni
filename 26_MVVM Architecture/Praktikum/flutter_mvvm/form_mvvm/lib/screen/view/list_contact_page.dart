import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../theme_app/theme_color.dart';
import '../view_model/db_contact_manager.dart';
import 'form_contact.dart';

class ListContactPage extends StatefulWidget {
  const ListContactPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ListContactPage> createState() => _ListContactPageState();
}

class _ListContactPageState extends State<ListContactPage> {
  late SharedPreferences loginData;
  String username = '';

  @override
  void initState() {
    super.initState();
    callUsername();
  }

  void callUsername() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username').toString().toUpperCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
        backgroundColor: ThemeColor.purple,
        actions: [
          IconButton(
              onPressed: () {
                loginData.setBool('login', true);
                loginData.remove('username');
                Navigator.pushReplacementNamed(context, '/');
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 30.0, left: 10.0, right: 10.0, bottom: 50.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'LIST CONTACTS \n$username',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: ThemeColor.titleColor),
            ),
            SizedBox(
              height: 25,
            ),
            Consumer<DatabaseManager>(
              builder: (context, manager, child) {
                final contacts = manager.getContacts;
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    final contactData = contacts[index];
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
                            onPressed: () async {
                              final selectedContact =
                                  await manager.getContactById(contactData.id!);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyContact(
                                            getContact: selectedContact,
                                          )));
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              manager.deleteContacts(contactData.id!);
                              // setState(() {
                              //   listContact.remove(listContact[index]);
                              // });
                            },
                          ),
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundColor: ThemeColor.bgColorAvatar,
                        child: Text(
                            contactData.name.substring(0, 1).toUpperCase(),
                            style: const TextStyle(
                                color: ThemeColor.purplePrimary,
                                fontWeight: FontWeight.bold)),
                      ),
                      title: Text(
                        contactData.name,
                        style: const TextStyle(
                            color: ThemeColor.titleColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      subtitle: Text(contactData.phone),
                      // title: Text(listContact.name),
                    );
                  },
                );
              },
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/createContact');
        },
        child: const Icon(Icons.add),
        backgroundColor: ThemeColor.purple,
      ),
    );
  }
}
