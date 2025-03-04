import 'package:flutter/material.dart';

class SyncConflictPage extends StatelessWidget {
  const SyncConflictPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resolve Conflicts'),
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
              'Resolve Data Conflicts During Sync',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to resolve data conflicts
              },
              child: const Text('Resolve Conflicts'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying conflict resolution results
            const Text('Conflict Resolution Results:', style: TextStyle(fontSize: 18)),
            // Add a widget to display resolution results
          ],
        ),
      ),
    );
  }
}
