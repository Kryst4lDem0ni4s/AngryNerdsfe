import 'package:flutter/material.dart';

class Conversation {
  final String id;
  final String title;
  final String lastMessage;
  final DateTime lastMessageTime;

  Conversation({
    required this.id,
    required this.title,
    required this.lastMessage,
    required this.lastMessageTime,
  });
}

class ConversationsPage extends StatelessWidget {
  final List<Conversation> conversations = [
    Conversation(
      id: '1',
      title: 'Order #1234',
      lastMessage: 'Your order has been shipped',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    Conversation(
      id: '2',
      title: 'Support Ticket',
      lastMessage: 'We are looking into your issue',
      lastMessageTime: DateTime.now().subtract(const Duration(days: 1)),
    ),
  ];

  ConversationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversations'),
      ),
      body: ListView.builder(
        itemCount: conversations.length,
        itemBuilder: (context, index) {
          final conversation = conversations[index];
          return ListTile(
            title: Text(conversation.title),
            subtitle: Text(conversation.lastMessage),
            trailing: Text(
              '${conversation.lastMessageTime.hour}:${conversation.lastMessageTime.minute}',
            ),
            onTap: () {
              // Navigate to conversation details
            },
          );
        },
      ),
    );
  }
}
