import 'package:equatable/equatable.dart';

abstract class ConversationState extends Equatable {
  const ConversationState();

  @override
  List<Object> get props => [];
}

class ConversationsLoading extends ConversationState {}

class ConversationsLoaded extends ConversationState {
  final List<Conversation> conversations;

  const ConversationsLoaded(this.conversations);

  @override
  List<Object> get props => [conversations];
}

class MessageSent extends ConversationState {
  final Message message;

  const MessageSent(this.message);

  @override
  List<Object> get props => [message];
}

class MessageReceived extends ConversationState {
  final Message message;

  const MessageReceived(this.message);

  @override
  List<Object> get props => [message];
}