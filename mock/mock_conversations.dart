import 'package:flutter_conversation_app/models/conversation.dart';

List<Conversation> mockConversations = [
  Conversation(
    id: '1',
    contactName: 'Alice',
    lastMessage: 'Hey, how are you?',
    timestamp: DateTime.now().subtract(Duration(minutes: 5)),
  ),
  Conversation(
    id: '2',
    contactName: 'Bob',
    lastMessage: 'Are we still on for tomorrow?',
    timestamp: DateTime.now().subtract(Duration(minutes: 10)),
  ),
  Conversation(
    id: '3',
    contactName: 'Charlie',
    lastMessage: 'Don’t forget the meeting!',
    timestamp: DateTime.now().subtract(Duration(hours: 1)),
  ),
  Conversation(
    id: '4',
    contactName: 'Diana',
    lastMessage: 'Let’s catch up soon!',
    timestamp: DateTime.now().subtract(Duration(hours: 2)),
  ),
  Conversation(
    id: '5',
    contactName: 'Eve',
    lastMessage: 'Happy Birthday!',
    timestamp: DateTime.now().subtract(Duration(days: 1)),
  ),
];