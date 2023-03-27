import 'package:code_competence1/home.dart';
import 'package:code_competence1/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCodeCompetence());
}

class MyCodeCompetence extends StatelessWidget {
  const MyCodeCompetence({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Day Kitchen',
      theme:
          ThemeData(appBarTheme: const AppBarTheme(color: AppThemeColor.peach)),
      home: const DayKitchenHome(),
    );
  }
}
