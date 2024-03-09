import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChatPage(),
  ));
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joy Obianwu'),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              // Add functionality to call Joy Obianwu
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChatBubble(
              message: 'Hello',
              time: '4:39 PM',
              isSentByMe: false,
            ),
            ChatBubble(
              message: 'Hi, how are you? 😄',
              time: '4:40 PM',
              isSentByMe: true,
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isSentByMe;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.time,
    required this.isSentByMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: isSentByMe ? Colors.blue : Colors.grey.shade200,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
          bottomLeft: Radius.circular(isSentByMe ? 12.0 : 0.0),
          bottomRight: Radius.circular(isSentByMe ? 0.0 : 12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(
              fontSize: 16.0,
              color: isSentByMe ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            time,
            style: TextStyle(
              fontSize: 12.0,
              color: isSentByMe ? Colors.white70 : Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
