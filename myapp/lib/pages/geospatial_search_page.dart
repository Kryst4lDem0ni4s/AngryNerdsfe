import 'package:flutter/material.dart';

class GeospatialSearchPage extends StatelessWidget {
  const GeospatialSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geospatial Search'),
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
              'Search for Nearby Locations',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter location or coordinates',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to perform geospatial search
              },
              child: const Text('Search'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying search results
            const Text('Search Results:', style: TextStyle(fontSize: 18)),
            // Add a widget to display search results
          ],
        ),
      ),
    );
  }
}
