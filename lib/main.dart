import 'package:flutter/material.dart';
import 'screens/chat_list_screen.dart';

void main() {
  runApp(WhatsAppUI());
}

class WhatsAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFF25D366),
        ),
        fontFamily: 'Helvetica',
      ),
      home: ChatListScreen(),
    );
  }
}
