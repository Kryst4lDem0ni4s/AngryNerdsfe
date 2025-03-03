import 'package:flutter/material.dart';
import 'threads_page.dart'; // Import the ThreadsPage


class ForumCategoriesPage extends StatelessWidget {
  const ForumCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forum Categories'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with actual number of categories
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Category ${index + 1}'),
            subtitle: const Text('Description of the category'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThreadsPage(categoryId: index + 1),

                ),
              );
            },

          );
        },
      ),
    );
  }
}
