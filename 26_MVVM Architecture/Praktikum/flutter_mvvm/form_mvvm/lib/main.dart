import 'package:flutter/material.dart';

import 'package:form1/screen/view_model/db_contact_manager.dart';
import 'package:provider/provider.dart';

import 'screen/view/form_contact.dart';
import 'screen/view/list_contact_page.dart';
import 'screen/view/login_page.dart';

void main() {
  runApp(const MyNewApp());
}

class MyNewApp extends StatelessWidget {
  const MyNewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DatabaseManager())
        // ChangeNotifierProvider(create: (context) => Provider2()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/listContact': (context) => const ListContactPage(),
          '/createContact': (context) => const MyContact(),
        },
        // home: MyContact(),
      ),
    );
  }
}
