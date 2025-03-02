import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // Import http package
import 'dart:convert'; // Import for json encoding/decoding

class Item {
  final String id;
  final String name;

  Item({required this.id, required this.name});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }
}

class InventoryManagementPage extends StatelessWidget {
  const InventoryManagementPage({Key? key}) : super(key: key);

  Future<List<Item>> fetchInventoryItems() async {
    final response = await http.get(Uri.parse('https://yourapi.com/api/inventory/items')); // Replace with your API URL

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the items
      final List<dynamic> itemJson = json.decode(response.body);
      return itemJson.map((json) => Item.fromJson(json)).toList(); // Assuming Item has a fromJson method
    } else {
      throw Exception('Failed to load inventory items');
    }
  }

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
            const Text('Your Inventory Items:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder<List<Item>>(
                future: fetchInventoryItems(), // Call the function to fetch items
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No items found.'));
                  } else {
                    final items = snapshot.data!;
                    return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(items[index].name), // Display item name
                          subtitle: Text('ID: ${items[index].id}'), // Display item ID
                          onTap: () {
                            // Navigate to item details page
                          },
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
