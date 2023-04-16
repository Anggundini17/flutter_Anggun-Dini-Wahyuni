import 'package:code_competence1/theme/theme.dart';
import 'package:flutter/material.dart';

import 'widget/contact_us.dart';
import 'widget/menu.dart';
import 'widget/welcome.dart';

class DayKitchenHome extends StatelessWidget {
  const DayKitchenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.0,
        title: Transform.scale(
          alignment: Alignment.center,
          scale: 0.5,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            child: Image.asset(
              'assets/default-monochrome.png',
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/DayKitchenTransparan.png'),
                    fit: BoxFit.contain),
                color: AppThemeColor.peach,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: AppThemeColor.title),
              title: Text('Home'),
              onTap: () {
                // TODO: Add navigation to home screen
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: AppThemeColor.title),
              title: Text('About Us'),
              onTap: () {
                // TODO: Add navigation to search screen
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_support, color: AppThemeColor.title),
              title: Text('Contact Us'),
              onTap: () {
                // TODO: Add navigation to notifications screen
              },
            ),
            ListTile(
              leading: Icon(Icons.login, color: AppThemeColor.title),
              title: Text('Login'),
              onTap: () {
                // TODO: Add navigation to settings screen
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 470,
              width: 500,
              decoration: const BoxDecoration(
                color: AppThemeColor.bgContainer,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: const WelcomeSection(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30.0, left: 30.0),
              child: Text(
                'About Us',
                style: TextStyle(
                  color: AppThemeColor.title,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
              child: Text(
                "Our menu offers a wide range of delicious dishes to satisfy every taste bud. Come and enjoy it! We will brighten your day!!",
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const OurMenu(),
            const Padding(
              padding: EdgeInsets.only(top: 30.0, left: 30.0),
              child: Text(
                'Contact Us',
                style: TextStyle(
                  color: AppThemeColor.title,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
              child: Text(
                'Do you have a comment or question for us? Everyone here is listening! Please contact us at any time, and we will be pleased to help.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const ContactUs(),
          ],
        ),
      ),
    );
  }
}
