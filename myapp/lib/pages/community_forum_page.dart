import 'package:flutter/material.dart';
// import 'login_page.dart';

class CommunityForumPage extends StatelessWidget {
  const CommunityForumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Forum'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the home page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Connect with Other Farmers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ask a question or share your thoughts',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to post the question or comment
              },
              child: const Text('Post'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying community posts
            const Text('Community Posts:', style: TextStyle(fontSize: 18)),
            // Add a ListView or similar widget to display posts
          ],
        ),
      ),
    );
  }
}
