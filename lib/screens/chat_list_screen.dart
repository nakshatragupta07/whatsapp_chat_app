import 'package:flutter/material.dart';
import 'chat_screen.dart';
import '../models/chat.dart';
import '../widgets/chat_tile.dart';

class ChatListScreen extends StatelessWidget {
  final List<Chat> chats = [
    Chat(name: 'John Doe', message: 'Hey, how are you?', time: '12:30 PM'),
    Chat(name: 'Jane Smith', message: 'Let\'s catch up later.', time: '11:15 AM'),
    // Add more dummy data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ChatTile(chat: chats[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: () {},
      ),
    );
  }
}
