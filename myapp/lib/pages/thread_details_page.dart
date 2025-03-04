import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Map<String, dynamic>>> fetchComments(String threadId) async {
  final response = await http.get(
    Uri.parse('https://yourapi.com/api/forum/threads/$threadId/comments'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> commentJson = json.decode(response.body);
    return commentJson.map((json) => json as Map<String, dynamic>).toList();
  } else {
    throw Exception('Failed to load comments');
  }
}

Future<List<Map<String, dynamic>>> fetchComments(String threadId) async {
  final response = await http.get(
    Uri.parse('https://yourapi.com/api/forum/threads/$threadId/comments'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> commentJson = json.decode(response.body);
    return commentJson.map((json) => json as Map<String, dynamic>).toList();
  } else {
    throw Exception('Failed to load comments');
  }
}

Future<void> deleteThread(String threadId) async {


  final response = await http.delete(
    Uri.parse('https://yourapi.com/api/forum/threads/$threadId'),
  );

  if (response.statusCode != 204) {
    throw Exception('Failed to delete thread');
  }
}

Future<void> updateThread(String threadId, Map<String, dynamic> threadData) async {

  final response = await http.put(
    Uri.parse('https://yourapi.com/api/forum/threads/$threadId'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(threadData),
  );

  if (response.statusCode != 200) {
    throw Exception('Failed to update thread');
  }
}


class ThreadDetailsPage extends StatelessWidget {
  final String threadId;

  const ThreadDetailsPage({Key? key, required this.threadId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thread Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: TextEditingController(text: 'Thread Title'),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),

            const SizedBox(height: 20),
            TextField(
              controller: TextEditingController(text: 'Thread content goes here...'),
              style: const TextStyle(fontSize: 16),
              maxLines: null,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to update the thread
              },
              child: const Text('Update Thread'),
            ),

            ElevatedButton(
              onPressed: () async {
                // Add logic to delete the thread
                await deleteThread(threadId);
                Navigator.pop(context); // Navigate back after deletion
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Delete Thread'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Comments:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            FutureBuilder<List<Map<String, dynamic>>>(
              future: fetchComments(threadId),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Text('No comments found.');
                } else {
                  final comments = snapshot.data!;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: comments.length,
                    itemBuilder: (context, index) {
                      final comment = comments[index];
                      return Card(
                        child: ListTile(
                          title: Text(comment['author']),
                          subtitle: Text(comment['content']),
                          trailing: Text(comment['timestamp']),
                        ),
                      );
                    },
                  );
                }
              },
            ),

          ],
        ),
      ),
    );
  }
}
