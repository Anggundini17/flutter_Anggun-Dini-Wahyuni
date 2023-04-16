import 'package:flutter/material.dart';

import '../theme/theme.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 30.0),
            child: Text(
              'Hallo Sunshine',
              style: TextStyle(
                color: AppThemeColor.title,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 7.0),
            child: Icon(
              Icons.sunny,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ],
      ),
      Center(
        child: Image.asset(
          'assets/hungry1.png',
          height: 200,
        ),
      ),
      const Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
            'Welcome to Kitchen Day!\nWhere you can easily satisfy your cravings for food! Browse our selection of delicious snacks and sweets and order right from your phone. We offer something for every taste, from sweet to savory. The food we provide will brighten your day. I thank you for choosing Kitchen Day.\n\nHappy Munching!',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    ]);
  }
}
