class Conversation {
  final String id;
  final String contactName;
  final String lastMessage;
  final DateTime timestamp;
  final String messages;

  Conversation(this.messages, {
    required this.id,
    required this.contactName,
    required this.lastMessage,
    required this.timestamp,
    required String name,
    required int unreadCount,
  });

  @override
  String toString() {
    return 'Conversation{id: $id, contactName: $contactName, lastMessage: $lastMessage, timestamp: $timestamp}';
  }
}
