import 'package:flutter/material.dart';

class GroupDetailsPage extends StatelessWidget {
  final String groupId; // Add groupId parameter

  const GroupDetailsPage({Key? key, required this.groupId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Details'),
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
            Text(
              'Group Name: $groupId', // Use groupId to display the group name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Description of the group goes here. This is where you can provide details about the group and its purpose.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to join the group
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You have joined the group!')),
                );
              },
              child: const Text('Join Group'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Members',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Example member count
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Member $index'),
                    subtitle: Text('This is a sample member description.'),
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
