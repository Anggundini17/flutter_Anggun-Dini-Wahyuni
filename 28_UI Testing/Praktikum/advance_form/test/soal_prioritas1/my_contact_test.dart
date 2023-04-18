import 'package:advance_form/soal_prioritas1/my_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test Halaman My Contact', () {
    testWidgets('Judul pada widget AppBar adalah Interactive Widgets',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      Finder appBar = find.byType(AppBar);
      expect(appBar, findsOneWidget);
      expect(find.text('Interactive Widgets'), findsOneWidget);
    });

    testWidgets('Pada body terdapat text Create New Contacts',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      expect(find.text('Create New Contacts'), findsOneWidget);
    });

    testWidgets(
        'Pada body terdapat deskripsi text : A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      expect(
          find.text(
              'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. '),
          findsOneWidget);
    });
  });
}
