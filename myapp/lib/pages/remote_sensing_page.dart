import 'package:flutter/material.dart';

class RemoteSensingPage extends StatelessWidget {
  const RemoteSensingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remote Sensing Analysis'),
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
              'Trigger Remote Sensing Analysis',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to trigger remote sensing analysis
              },
              child: const Text('Start Analysis'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying results
            const Text('Analysis Results:', style: TextStyle(fontSize: 18)),
            // Add a widget to display analysis results
          ],
        ),
      ),
    );
  }
}
