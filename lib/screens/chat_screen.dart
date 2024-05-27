import 'package:flutter/material.dart';
import '../widgets/message_bubble.dart';

class ChatScreen extends StatelessWidget {
  final String name;

  ChatScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/avatar_placeholder.png'), // Replace with actual asset
            ),
            SizedBox(width: 10),
            Text(name),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                MessageBubble(message: 'Hello!', isMe: true),
                MessageBubble(message: 'Hi there!', isMe: false),
                // Add more dummy messages
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
