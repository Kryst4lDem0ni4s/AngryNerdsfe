import 'package:flutter/material.dart';

class ChatWithCustomersPage extends StatelessWidget {
  const ChatWithCustomersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with Customers'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Example message count
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Customer Message $index'),
                    subtitle: Text('This is a sample message.'),
                  );
                },
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Type your message',
              ),
              onSubmitted: (value) {
                // Logic to send the message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Message sent: $value')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
