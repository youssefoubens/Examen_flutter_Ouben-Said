import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/conversation.dart';
import '../models/message.dart';
import '../models/mock_conversations.dart';
import '../mock/mock_messages.dart';

// Events for ConversationBloc
abstract class ConversationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadConversations extends ConversationEvent {}

class SendMessage extends ConversationEvent {
  final String conversationId;
  final String content;

  SendMessage(this.conversationId, this.content, {required String conversationId, required bool isMe});

  @override
  List<Object> get props => [conversationId, content];
}

class ReceiveMessage extends ConversationEvent {
  final Message message;

  ReceiveMessage(this.message);

  @override
  List<Object> get props => [message];
}

// States for ConversationBloc
abstract class ConversationState extends Equatable {
  @override
  List<Object> get props => [];
}

class ConversationsLoading extends ConversationState {}

class ConversationsLoaded extends ConversationState {
  final List<Conversation> conversations;

  ConversationsLoaded(this.conversations);

  @override
  List<Object> get props => [conversations];
}

class MessageSent extends ConversationState {
  final Message message;

  MessageSent(this.message);

  @override
  List<Object> get props => [message];
}

// ConversationBloc implementation
class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  ConversationBloc() : super(ConversationsLoading());

  @override
  Stream<ConversationState> mapEventToState(ConversationEvent event) async* {
    if (event is LoadConversations) {
      yield ConversationsLoading();
      await Future.delayed(Duration(seconds: 1)); // Simulate network delay
      yield ConversationsLoaded(MockConversations.conversations);
    } else if (event is SendMessage) {
      final newMessage = Message(
        id: DateTime.now().toString(),
        conversationId: event.conversationId,
        content: event.content,
        isMe: true,
        timestamp: DateTime.now(),
      );
      yield MessageSent(newMessage);
    } else if (event is ReceiveMessage) {
      yield MessageSent(event.message);
    }
  }
}