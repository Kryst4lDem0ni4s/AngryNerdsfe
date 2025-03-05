import 'package:flutter/material.dart';
// import 'login_page.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> notifications = [
    {
      'id': '1',
      'title': 'New Message',
      'message': 'You have received a new message.',
      'isRead': false,
    },
    {
      'id': '2',
      'title': 'Update Available',
      'message': 'A new update is available for your app.',
      'isRead': false,
    },
  ]; // Dummy data for notifications

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
            Expanded(
              child: ListView.builder(
                itemCount: notifications.length, // Assuming notifications is a list of notification data
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return ListTile(
                    title: Text(notification['title']),
                    subtitle: Text(notification['message']),

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
