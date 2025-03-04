import 'package:flutter/material.dart';

class SensorAlertsPage extends StatelessWidget {
  const SensorAlertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensor Alerts'),
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
              'Retrieve Sensor Alerts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to retrieve sensor alerts
              },
              child: const Text('Get Sensor Alerts'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying sensor alerts results
            const Text('Sensor Alerts Information:', style: TextStyle(fontSize: 18)),
            // Add a widget to display sensor alerts information
          ],
        ),
      ),
    );
  }
}
