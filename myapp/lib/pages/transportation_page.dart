import 'package:flutter/material.dart';
// import 'login_page.dart';

class TransportationPage extends StatelessWidget {
  const TransportationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transportation Services'),
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
              'Search for Transportation Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter service name or category',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to perform the search for transportation services
              },
              child: const Text('Search'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying search results
            const Text('Available Transportation Services:', style: TextStyle(fontSize: 18)),
            // Add a ListView or similar widget to display results
          ],
        ),
      ),
    );
  }
}
