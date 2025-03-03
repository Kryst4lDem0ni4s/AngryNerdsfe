import 'package:flutter/material.dart';
import 'dart:io'; // For File handling

Future<String> uploadAudio(File audioFile) async {
  // TODO: Implement audio upload logic
  // final uri = Uri.parse('https://yourapi.com/api/chat/audio/upload');
  // final request = http.MultipartRequest('POST', uri)
  //   ..files.add(await http.MultipartFile.fromPath('audio', audioFile.path));
  // final response = await request.send();
  // return response.statusCode == 200 ? 'Success' : 'Error';
  return 'Success'; // Placeholder
}


// import 'login_page.dart';

class ChatbotPage extends StatelessWidget {
  const ChatbotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatbot'),
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
              'Ask your question:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Type your query here',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    // Send text query to chatbot
                    // Replace with actual API call
                    final response = 'Chatbot response'; // Placeholder for actual response
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(response)),
                    );
                  },
                  child: const Text('Send Text Query'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // Handle audio recording
                    // TODO: Add audio recording logic
                    
                    // Upload audio file
                    // final audioFile = ...; // Get recorded audio file
                    // final response = await uploadAudio(audioFile);
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Audio uploaded successfully')),
                    );
                  },

                  child: const Icon(Icons.mic),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
