import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat_app/main.dart'; // Make sure the import path is correct

void main() {
  testWidgets('WhatsApp UI test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(WhatsAppUI());

    // Verify that our app shows a chat list.
    expect(find.text('WhatsApp'), findsOneWidget);
  });
}
