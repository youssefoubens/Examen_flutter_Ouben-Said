import '../models/conversation.dart';
import '../models/message.dart';


class MockConversations {
  static final List<Conversation> conversations = [
    Conversation(
      id: '1',
      name: 'John Doe',
      lastMessage: 'Hey, how are you?',
      timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
      unreadCount: 1,
      messages: MockMessages.messagesForConversation('1'), contactName: '',
    ),
    Conversation(
      id: '2',
      name: 'Jane Smith',
      lastMessage: 'See you tomorrow!',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      unreadCount: 0,
      messages: MockMessages.messagesForConversation('2'), contactName: '',
    ),
  ];
}
