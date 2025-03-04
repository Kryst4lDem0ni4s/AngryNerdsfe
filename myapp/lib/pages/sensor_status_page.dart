import 'package:flutter/material.dart';

class SensorStatusPage extends StatelessWidget {
  const SensorStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensor Status'),
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
              'Retrieve Sensor Diagnostics',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to retrieve sensor status
              },
              child: const Text('Get Sensor Status'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying sensor status results
            const Text('Sensor Status Information:', style: TextStyle(fontSize: 18)),
            // Add a widget to display sensor status information
          ],
        ),
      ),
    );
  }
}
