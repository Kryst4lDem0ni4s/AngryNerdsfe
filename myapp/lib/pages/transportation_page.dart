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
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter service name or category',
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                // Handle input changes
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to perform the search for transportation services
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Search functionality coming soon!'),
                  ),
                );
                // Here you would typically call a function to fetch data from the backend
              },
              child: const Text('Search'),
            ),
            const SizedBox(height: 20),
            const Text('Available Transportation Services:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Example: replace with actual number of results
                itemBuilder: (context, index) {
                  return ListTile(
                    title: const Text('Transportation Service Item'), // Placeholder for result item
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
