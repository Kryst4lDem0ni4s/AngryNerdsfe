import 'package:flutter/material.dart';
import 'package:myapp/widgets/base_layout.dart';
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
    return BaseLayout(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onTap: (index) {
          // Handle navigation based on index
        },
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 24, color: Color(0xFF000000)), // Black color
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'inventory'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF34a753)),
              child: const Text('Go to Inventory'), // Green color
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'notifications'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFf9ba06)),
              child: const Text('Go to Notifications'), // Yellow color
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'settings'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFff0000)),
              child: const Text('Go to Settings'), // Red color
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'chat'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF34a753)),
              child: const Text('Chat with Customers'), // Green color
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'crop_monitoring'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFf9ba06)),
              child: const Text('Crop Monitoring'), // Yellow color
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'pest_detection'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFff0000)),
              child: const Text('Pest Detection'), // Red color
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'maps'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF34a753)),
              child: const Text('Maps'), // Green color
            ),
            ElevatedButton(
              onPressed: () => _navigateToFeature(context, 'weather'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFf9ba06)),
              child: const Text('Weather Updates'), // Yellow color
            ),
          ],
        ),
      ),
    );
  }
}
