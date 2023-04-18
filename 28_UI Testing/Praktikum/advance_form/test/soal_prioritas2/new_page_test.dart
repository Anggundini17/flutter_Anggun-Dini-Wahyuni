import 'dart:math';

import 'package:advance_form/soal_prioritas2/new_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test Halaman My New Page,', () {
    testWidgets('Judul pada widget AppBar adalah Sunshine',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyNewPage(),
      ));

      Finder appBar = find.byType(AppBar);
      expect(appBar, findsOneWidget);
      expect(find.text('Sunshine'), findsOneWidget);
    });

    testWidgets('Body memiliki Text Welcome, My Sunshine! dan Icon Sunny ',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyNewPage(),
      ));

      expect(find.text('Welcome, My Sunshine!'), findsOneWidget);

      expect(find.byIcon(Icons.sunny), findsOneWidget);
    });

    testWidgets('Body memiliki Icon Attraction menggunakan Widget Card',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyNewPage(),
      ));

      expect(find.byType(Card), findsOneWidget);

      final iconAttraction = find.byIcon(Icons.attractions);
      expect(iconAttraction, findsOneWidget);
    });

    testWidgets('Body memiliki Text Lets Go To Holiday dan Text Describenya! ',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyNewPage(),
      ));

      expect(find.text('Lets Go To Holiday!'), findsOneWidget);
      expect(
          find.text(
              'Taking a holiday can make your day shine with happiness and excitement, as you immerse yourself in new experiences, cultures, and surroundings, leaving behind the stress and routine of everyday life.'),
          findsOneWidget);
    });
  });
}
