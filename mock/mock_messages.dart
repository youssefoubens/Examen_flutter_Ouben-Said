import 'package:flutter_conversation_app/models/message.dart';

final List<Message> mockMessages = [
  Message(
    id: '1',
    conversationId: '1',
    content: 'Hey, how are you?',
    isMe: false,
    timestamp: DateTime.now().subtract(Duration(minutes: 5)),
  ),
  Message(
    id: '2',
    conversationId: '1',
    content: 'I am good, thanks! How about you?',
    isMe: true,
    timestamp: DateTime.now().subtract(Duration(minutes: 4)),
  ),
  Message(
    id: '3',
    conversationId: '1',
    content: 'Are we still on for the meeting tomorrow?',
    isMe: false,
    timestamp: DateTime.now().subtract(Duration(minutes: 3)),
  ),
  Message(
    id: '4',
    conversationId: '1',
    content: 'Yes, looking forward to it!',
    isMe: true,
    timestamp: DateTime.now().subtract(Duration(minutes: 2)),
  ),
  Message(
    id: '5',
    conversationId: '2',
    content: 'Did you finish the report?',
    isMe: false,
    timestamp: DateTime.now().subtract(Duration(hours: 1)),
  ),
  Message(
    id: '6',
    conversationId: '2',
    content: 'Almost done, will send it shortly.',
    isMe: true,
    timestamp: DateTime.now().subtract(Duration(minutes: 30)),
  ),
];