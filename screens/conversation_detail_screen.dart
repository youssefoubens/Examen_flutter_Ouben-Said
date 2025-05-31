import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/conversation_bloc.dart';
import '../models/message.dart';
import '../widgets/message_bubble.dart';

class ConversationDetailScreen extends StatelessWidget {
  final String conversationId;

  const ConversationDetailScreen({Key? key, required this.conversationId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversation'),
      ),
      body: BlocBuilder<ConversationBloc, ConversationState>(
        builder: (context, state) {
          if (state is ConversationsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ConversationsLoaded) {
            final conversation = state.conversations
                .firstWhere((conversation) => conversation.id == conversationId);
            final messages = conversation.messages;

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final message = messages[index];
                      return MessageBubble(
                        content: message.content,
                        isMe: message.isMe,
                        timestamp: message.timestamp,
                      );
                    },
                  ),
                ),
                _buildMessageInput(context),
              ],
            );
          }
          return Center(child: Text('No messages found.'));
        },
      ),
    );
  }

  Widget _buildMessageInput(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                BlocProvider.of<ConversationBloc>(context).add(
                  SendMessage(
                    conversationId,
                    _controller.text,
                    isMe: true, conversationId: '',
                  ),
                );
                _controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}