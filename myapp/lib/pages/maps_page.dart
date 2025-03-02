import 'package:flutter/material.dart';
// import 'login_page.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the home page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'View Your Fields on the Map',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to display the map
              },
              child: const Text('Show Map'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying map results
            const Text('Map View:', style: TextStyle(fontSize: 18)),
            // Add a widget to display the map
          ],
        ),
      ),
    );
  }
}
