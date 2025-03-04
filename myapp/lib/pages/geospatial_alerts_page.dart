import 'package:flutter/material.dart';

class GeospatialAlertsPage extends StatelessWidget {
  const GeospatialAlertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geospatial Alerts'),
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
              'Retrieve Location-Based Alerts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to retrieve geospatial alerts
              },
              child: const Text('Get Alerts'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying alerts results
            const Text('Alerts Information:', style: TextStyle(fontSize: 18)),
            // Add a widget to display alerts information
          ],
        ),
      ),
    );
  }
}
