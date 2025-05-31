import 'package:flutter/material.dart';
import '../models/conversation.dart';

class ConversationItem extends StatelessWidget {
  final Conversation conversation;
  final VoidCallback onTap;
  final Key? key;

  const ConversationItem({
    this.key,
    required this.conversation,
    required this.onTap,
  }) : super(key: key); // explicitly pass to super for Flutter 2.x

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(conversation.contactName[0]),
      ),
      title: Text(conversation.contactName),
      subtitle: Text(
        conversation.lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: conversation.unreadCount > 0
          ? CircleAvatar(
              radius: 12,
              child: Text(
                conversation.unreadCount.toString(),
                style: const TextStyle(fontSize: 12),
              ),
            )
          : null,
      onTap: onTap,
    );
  }
}
