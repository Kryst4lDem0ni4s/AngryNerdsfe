import 'package:flutter/material.dart';
import 'group_details_page.dart'; // Import the GroupDetailsPage


class GroupsPage extends StatelessWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groups'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with actual number of groups
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Group ${index + 1}'),
            subtitle: const Text('Description of the group'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroupDetailsPage(groupId: '${index + 1}'),

                ),
              );
            },

          );
        },
      ),
    );
  }
}
