import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String content;
  final bool isMe;
  final String timestamp;

  const MessageBubble({
    Key? key,
    required this.content,
    required this.isMe,
    required this.timestamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isMe
          ? const EdgeInsets.only(left: 50.0, top: 10.0, bottom: 10.0)
          : const EdgeInsets.only(right: 50.0, top: 10.0, bottom: 10.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: isMe ? Colors.blue[200] : Colors.grey[300],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            content,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            timestamp,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}