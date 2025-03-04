import 'package:flutter/material.dart';

class SyncInventoryPage extends StatelessWidget {
  const SyncInventoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sync Inventory'),
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
              'Sync Your Offline Inventory Changes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to sync offline inventory changes
              },
              child: const Text('Sync Inventory'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying sync results
            const Text('Sync Results:', style: TextStyle(fontSize: 18)),
            // Add a widget to display sync results
          ],
        ),
      ),
    );
  }
}
