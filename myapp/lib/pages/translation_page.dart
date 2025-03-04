import 'package:flutter/material.dart';

class TranslationPage extends StatelessWidget {
  const TranslationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translation'),
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
            const Text(
              'Translate Content to a Target Language',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter text to translate',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to translate content
              },
              child: const Text('Translate'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying translation results
            const Text('Translation Results:', style: TextStyle(fontSize: 18)),
            // Add a widget to display translation results
          ],
        ),
      ),
    );
  }
}
