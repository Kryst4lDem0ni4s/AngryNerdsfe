import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> createThread(Map<String, dynamic> threadData) async {
  final response = await http.post(
    Uri.parse('https://yourapi.com/api/forum/threads'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(threadData),
  );

  if (response.statusCode != 201) {
    throw Exception('Failed to create thread');
  }
}

Future<List<Map<String, dynamic>>> fetchThreads() async {

  final response = await http.get(Uri.parse('https://yourapi.com/api/forum/threads'));
  if (response.statusCode == 200) {
    final List<dynamic> threadJson = json.decode(response.body);
    return threadJson.map((json) => json as Map<String, dynamic>).toList();
  } else {
    throw Exception('Failed to load threads');
  }
}

// import 'login_page.dart';

class CommunityForumPage extends StatelessWidget {
  const CommunityForumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Forum'),
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
              'Connect with Other Farmers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ask a question or share your thoughts',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Create new thread
                // final response = await createThread(threadData);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Thread created successfully')),
                );
              },

              child: const Text('Post'),
            ),
            const SizedBox(height: 20),
            FutureBuilder<List<Map<String, dynamic>>>(
              future: fetchThreads(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Text('No threads found.');
                } else {
                  final threads = snapshot.data!;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: threads.length,
                    itemBuilder: (context, index) {
                      final thread = threads[index];
                      return Card(
                        child: ListTile(
                          title: Text(thread['title']),
                          subtitle: Text(thread['content']),
                          trailing: Text('${thread['votes']} votes'),
                          onTap: () {
                            // Navigate to thread details
                          },
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
