import 'package:flutter/material.dart';

class ResourceOptimizationPage extends StatelessWidget {
  const ResourceOptimizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resource Optimization'),
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
              'Optimize Your Resources',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying results
            const Text('Results will be displayed here:', style: TextStyle(fontSize: 18)),
            // Add a ListView or similar widget to display results
          ],
        ),
      ),
    );
  }
}
