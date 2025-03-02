import 'package:flutter/material.dart';
import 'inventory.dart'; // Ensure InventoryPage is imported
import 'notification.dart'; // Import NotificationsPage
import 'settings.dart'; // Import SettingsPage

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
      // Add more cases for additional features
      case 'chat':
        // Navigate to chat page
        break;
      case 'crop_monitoring':
        // Navigate to crop monitoring page
        break;
      case 'pest_detection':
        // Navigate to pest detection page
        break;
      case 'maps':
        // Navigate to maps page
        break;
      case 'weather':
        // Navigate to weather page
        break;
      // Add more features as needed
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
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'chat'),
              child: const Text('Chat with Customers'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'crop_monitoring'),
              child: const Text('Crop Monitoring'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'pest_detection'),
              child: const Text('Pest Detection'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'maps'),
              child: const Text('Maps'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'weather'),
              child: const Text('Weather Updates'),
            ),
          ],
        ),
      ),
    );
  }
}
