import 'package:flutter/material.dart';
import 'thread_details_page.dart'; // Import the ThreadDetailsPage


class ThreadsPage extends StatelessWidget {
  final int categoryId;

  const ThreadsPage({Key? key, required this.categoryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Threads in Category $categoryId'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with actual number of threads
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Thread ${index + 1}'),
            subtitle: const Text('Description of the thread'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              final thread = {
                'id': '${index + 1}',
                'title': 'Thread ${index + 1}',
                'content': 'Description of the thread'
              }; // Replace with actual thread data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThreadDetailsPage(threadId: thread['id']!),

                ),
              );
            },


          );
        },
      ),
    );
  }
}
