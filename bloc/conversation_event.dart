import 'package:equatable/equatable.dart';

abstract class ConversationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadConversations extends ConversationEvent {}

class SendMessage extends ConversationEvent {
  final String conversationId;
  final String content;

  SendMessage({required this.conversationId, required this.content});

  @override
  List<Object?> get props => [conversationId, content];
}

class ReceiveMessage extends ConversationEvent {
  final String conversationId;
  final String content;

  ReceiveMessage({required this.conversationId, required this.content});

  @override
  List<Object?> get props => [conversationId, content];
}