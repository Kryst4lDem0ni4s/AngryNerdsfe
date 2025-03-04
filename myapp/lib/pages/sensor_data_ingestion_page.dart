import 'package:flutter/material.dart';

class SensorDataIngestionPage extends StatelessWidget {
  const SensorDataIngestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingest Sensor Data'),
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
              'Ingest Sensor Readings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to ingest sensor data
              },
              child: const Text('Ingest Data'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying ingestion results
            const Text('Ingestion Results:', style: TextStyle(fontSize: 18)),
            // Add a widget to display ingestion results
          ],
        ),
      ),
    );
  }
}
