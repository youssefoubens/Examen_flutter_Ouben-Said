import 'package:flutter/material.dart';
import 'package:flutter_conversation_app/models/conversation.dart';

class ConversationTile extends StatelessWidget {
  final Conversation conversation;
  final VoidCallback onTap;

  const ConversationTile({
    Key? key,
    required this.conversation,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        child: Text(conversation.contactName[0]), // Display first letter of contact name
      ),
      title: Text(conversation.contactName),
      subtitle: Text(conversation.lastMessage),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _formatTimestamp(conversation.timestamp),
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          // Badge for unread messages can be added here
        ],
      ),
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    // Format the timestamp to a more readable format
    return '${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}';
  }
}