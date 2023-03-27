import 'package:flutter/material.dart';

class OurMenu extends StatelessWidget {
  const OurMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          Card(
            child: Image.asset(
              'assets/snack1.png',
              height: 100,
              width: 100,
            ),
          ),
          Card(
            child: Image.asset(
              'assets/risol.png',
              height: 100,
              width: 100,
            ),
          ),
          Card(
            child: Image.asset(
              'assets/currypuff.png',
              height: 100,
              width: 100,
            ),
          ),
          Card(
            child: Image.asset(
              'assets/dimsum.png',
              height: 100,
              width: 100,
            ),
          ),
          Card(
            child: Image.asset(
              'assets/cookies.png',
              height: 100,
              width: 100,
            ),
          ),
          Card(
            child: Image.asset(
              'assets/brownies.png',
              height: 100,
              width: 100,
            ),
          ),
          Card(
            child: Image.asset(
              'assets/dimsum.png',
              height: 100,
              width: 100,
            ),
          ),
          Card(
            child: Image.asset(
              'assets/cookies.png',
              height: 100,
              width: 100,
            ),
          ),
          Card(
            child: Image.asset(
              'assets/brownies.png',
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}