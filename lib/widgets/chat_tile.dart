import 'package:flutter/material.dart';
import '../models/chat.dart';
import '../screens/chat_screen.dart';

class ChatTile extends StatelessWidget {
  final Chat chat;

  ChatTile({required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/avatar_placeholder.png'), // Replace with actual asset
      ),
      title: Text(chat.name),
      subtitle: Text(chat.message),
      trailing: Text(chat.time),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen(name: chat.name)),
        );
      },
    );
  }
}
