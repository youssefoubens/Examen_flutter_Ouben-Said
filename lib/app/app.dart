import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/conversations/bloc/conversation_bloc.dart';
import 'features/conversations/bloc/conversation_event.dart';
import 'features/conversations/repositories/conversation_repository.dart';
import 'features/conversations/screens/conversation_list_screen.dart';

class App extends StatelessWidget {
  // Remove `super.key` for Flutter 2.x
  const App();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ConversationRepository(),
      child: BlocProvider(
        create: (context) => ConversationBloc(
          conversationRepository:
              RepositoryProvider.of<ConversationRepository>(context),
        )..add(LoadConversations()),
        child: MaterialApp(
          title: 'Messagerie',
          theme: ThemeData(
            primarySwatch: Colors.blue, // Material 2 compatible
          ),
          home: const ConversationListScreen(),
        ),
      ),
    );
  }
}
