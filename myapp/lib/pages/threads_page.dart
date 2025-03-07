import 'package:flutter/material.dart';

class ThreadsPage extends StatelessWidget {
  const ThreadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forum Threads'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Threads',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Example thread count
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Thread Title $index'),
                    subtitle: Text('This is a sample thread description.'),
                    onTap: () {
                      // Logic to navigate to thread details
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Logic to create a new thread
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('New thread created!')),
                );
              },
              child: const Text('Create New Thread'),
            ),
          ],
        ),
      ),
    );
  }
}
