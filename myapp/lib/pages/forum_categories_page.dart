import 'package:flutter/material.dart';

class ForumCategoriesPage extends StatelessWidget {
  const ForumCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forum Categories'),
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
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Example category count
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Category $index'),
                    subtitle: Text('This is a sample category description.'),
                    onTap: () {
                      // Logic to navigate to category threads
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Logic to create a new category
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('New category created!')),
                );
              },
              child: const Text('Create New Category'),
            ),
          ],
        ),
      ),
    );
  }
}
