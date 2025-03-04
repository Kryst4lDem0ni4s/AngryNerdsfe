import 'package:flutter/material.dart';

class QueuePage extends StatelessWidget {
  const QueuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Processing Queue'),
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
              'Add Request to AI Processing Queue',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to add request to the AI processing queue
              },
              child: const Text('Add to Queue'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying queue results
            const Text('Queue Information:', style: TextStyle(fontSize: 18)),
            // Add a widget to display queue information
          ],
        ),
      ),
    );
  }
}
