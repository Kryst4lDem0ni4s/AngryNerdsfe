import 'package:flutter/material.dart';
// import 'login_page.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({Key? key}) : super(key: key);

  List<Map<String, dynamic>> notifications = []; // Initialize with an empty list

  void subscribeToNotifications() {
    print('Subscribed to notifications');
    // Logic for subscribing to notifications can be added here
  }

  void unsubscribeFromNotifications() {
    print('Unsubscribed from notifications');
    // Logic for unsubscribing from notifications can be added here
  }




  void markNotificationAsRead(String id) {
    // Logic to mark notification as read
    print('Notification $id marked as read');
  }

  void deleteNotification(String id) {
    // Logic to delete notification
    print('Notification $id deleted');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the home page
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Notifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: subscribeToNotifications,
              child: Text('Subscribe to Notifications'),
            ),
            ElevatedButton(
              onPressed: unsubscribeFromNotifications,
              child: Text('Unsubscribe from Notifications'),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: notifications.length, // Assuming notifications is a list of notification data
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return ListTile(
                    title: Text(notification['title'] ?? 'No Title'),
                    subtitle: Text(notification['message'] ?? 'No Message'),
                    onTap: () {
                      markNotificationAsRead(notification['id']);

                    },
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                      deleteNotification(notification['id']);

                      },
                    ),
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
