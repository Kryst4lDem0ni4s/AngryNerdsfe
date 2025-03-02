import 'package:flutter/material.dart';
// import 'login_page.dart';

class InventoryManagementPage extends StatelessWidget {
  const InventoryManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory Management'),
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
              'Manage Your Inventory',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search for items',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to perform the search for inventory items
              },
              child: const Text('Search'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying inventory items
            const Text('Your Inventory Items:', style: TextStyle(fontSize: 18)),
            // Add a ListView or similar widget to display items
          ],
        ),
      ),
    );
  }
}
