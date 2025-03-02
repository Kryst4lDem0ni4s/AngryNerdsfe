import 'package:flutter/material.dart';
import 'inventory.dart'; // Ensure InventoryPage is imported

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _navigateToFeature(BuildContext context, String feature) {
    switch (feature) {
      case 'inventory':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const InventoryPage()),
        );
        break; // Ensure to break after each case
      case 'notifications':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NotificationsPage()),
        );
        break;
      case 'settings':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SettingsPage()),
        );
        break;

        break;
      // Add more cases as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'inventory'),
              child: const Text('Go to Inventory'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'notifications'),
              child: const Text('Go to Notifications'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'settings'),
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
