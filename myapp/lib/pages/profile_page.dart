import 'package:flutter/material.dart';
// import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
              'User Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Name: John Doe'),
            const SizedBox(height: 10),
            const Text('Email: johndoe@example.com'),
            const SizedBox(height: 10),
            const Text('Phone: +1234567890'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to edit profile
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
