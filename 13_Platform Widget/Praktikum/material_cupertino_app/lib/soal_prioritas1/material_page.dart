import 'package:flutter/material.dart';

class Contact {
  String name;
  String phone_number;

  Contact(this.name, this.phone_number);
}

class MaterialHomePage extends StatelessWidget {
  List _contact = [
    Contact('Leane Graham', '1-770-736-8031 x56442'),
    Contact('Ervin Howell', '010-692-6593 x09125'),
    Contact('Clementine Bauch', '1-463-123-4447'),
    Contact('Patricia Lebsack', '493-170-9623 x156'),
    Contact('Chelsey Dietrich', '(254)954-1289'),
    Contact('Mrs. Dennis Schulist', '1-477-935-8478 x6430'),
    Contact('Kurtis Weissnat', '210.067.6132'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ],
        ),
      ),

      //BODY AWAL MATERIAL APP MENGGUNAKAN WIDGET CENTER
      // body: Center(child: Text('This is a Material App Body')),

      //TAMPILAN BODY SETELAH MENGGUNAKAN WIDGET LIST VIEW
      body: ListView.builder(
        itemCount: _contact.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_contact[index].name),
            subtitle: Text(_contact[index].phone_number),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                '${_contact[index].name[0]}',
                style: TextStyle(color: Colors.white),
                // selectionColor: Colors.white,
              ),
            ),
            onTap: () {},
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
    );
  }
}
