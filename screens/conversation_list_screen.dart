import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/conversation_bloc.dart';
import '../bloc/conversation_event.dart';
import '../bloc/conversation_state.dart';
import '../widgets/conversation_tile.dart';

class ConversationListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversations'),
      ),
      body: BlocBuilder<ConversationBloc, ConversationState>(
        builder: (context, state) {
          if (state is ConversationsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ConversationsLoaded) {
            return ListView.builder(
              itemCount: state.conversations.length,
              itemBuilder: (context, index) {
                final conversation = state.conversations[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/conversationDetail',
                      arguments: conversation.id,
                    );
                  },
                  child: ConversationTile(conversation: conversation),
                );
              },
            );
          } else {
            return Center(child: Text('Failed to load conversations'));
          }
        },
      ),
    );
  }
}