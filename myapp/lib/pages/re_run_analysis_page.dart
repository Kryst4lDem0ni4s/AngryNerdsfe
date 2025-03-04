import 'package:flutter/material.dart';

class ReRunAnalysisPage extends StatelessWidget {
  const ReRunAnalysisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Re-run AI Analysis'),
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
              'Re-run an AI Analysis Job',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to re-run the AI analysis job
              },
              child: const Text('Re-run Analysis'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying results
            const Text('Re-run Results:', style: TextStyle(fontSize: 18)),
            // Add a widget to display re-run results
          ],
        ),
      ),
    );
  }
}
