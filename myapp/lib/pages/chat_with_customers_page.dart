import 'package:flutter/material.dart';
// import 'login_page.dart';

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
            Navigator.pop(context); // Navigate back to the home page
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Messages',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Placeholder for displaying customer messages
            Text('No new messages', style: TextStyle(fontSize: 18)),
            // Add a ListView or similar widget to display messages
          ],
        ),
      ),
    );
  }
}
