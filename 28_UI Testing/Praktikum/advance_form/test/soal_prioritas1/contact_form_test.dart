import 'package:advance_form/model/contact_class.dart';
import 'package:advance_form/soal_prioritas1/contact_form.dart';
import 'package:advance_form/soal_prioritas1/my_contact.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  group('Test FormContact,', () {
    testWidgets('Memiliki 2 TextFormField', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      Finder textFormField = find.byType(TextFormField);
      expect(textFormField, findsNWidgets(2));
    });

    testWidgets('Test Date Picker Widget', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      // Find the date picker widget
      final datePickerFinder = find.byIcon(Icons.calendar_month);

      // Tap the date picker widget
      await tester.tap(datePickerFinder);
      await tester.pumpAndSettle();

      // Find the date picker dialog
      final datePickerDialogFinder = find.byType(DatePickerDialog);

      // Check if the date picker dialog is displayed
      expect(datePickerDialogFinder, findsOneWidget);

      // Find the save button
      final saveButtonFinder = find.text('OK');

      // Tap the save button
      await tester.tap(saveButtonFinder);
      await tester.pumpAndSettle();
    });

    testWidgets('Test Color Picker Widget', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      final colorTextFinder = find.text('Color');
      expect(colorTextFinder, findsOneWidget);

      final colorIconFinder = find.byIcon(Icons.color_lens);
      await tester.tap(colorIconFinder);
      await tester.pumpAndSettle();

      // Find initial color of the container
      final containerFinder = find.byType(Container);
      final containerWidget = tester.widget<Container>(containerFinder.first);
      expect(containerWidget.color, Color(0xffe7e0ec));

      // // Find color picker dialog
      final dialogFinder = find.byType(AlertDialog);
      expect(dialogFinder, findsOneWidget);

      // // Select new color
      final newColor = Colors.red;
      final colorPickerFinder = find.byType(ColorPicker);
      final colorPickerWidget = tester.widget<ColorPicker>(colorPickerFinder);
      colorPickerWidget.onColorChanged(newColor);
      await tester.pumpAndSettle();

      // Find and tap Save button
      final saveButtonFinder = find.text('Save');
      expect(saveButtonFinder, findsOneWidget);
      await tester.tap(saveButtonFinder);
      await tester.pumpAndSettle();
    });

    testWidgets('Test File Picker Widget', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      // Verify initial state
      final filePickerIcon = find.byIcon(Icons.add_box);
      expect(find.text('Pick Files'), findsOneWidget);
    });

    testWidgets('Test Button Submit merupakan Widget Elevated Button',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      final submitButton = find.byType(ElevatedButton);
      expect(submitButton, findsOneWidget);
    });

    testWidgets('Test Menampilkan List Data', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyContact(),
      ));

      // Expect to find the 'List Contacts' header text
      expect(find.text('List Contacts'), findsOneWidget);

      expect(find.byType(ListView), findsOneWidget);

      expect(find.byType(ListTile), findsAtLeastNWidgets(3));

      expect(find.byType(CircleAvatar), findsAtLeastNWidgets(3));

      expect(find.text('History'), findsOneWidget);
    });
  });
}
