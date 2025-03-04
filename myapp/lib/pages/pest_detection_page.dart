import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Import ImagePicker
import 'package:http/http.dart' as http; // Import http package
import 'dart:convert'; // Import dart:convert for JSON decoding

class PestDetectionPage extends StatelessWidget {
  const PestDetectionPage({Key? key}) : super(key: key);

  Future<void> uploadPestImage(File image) async {
    // Implement your image upload logic here
    // For now, just simulating a delay
    await Future.delayed(const Duration(seconds: 2));
  }

  Future<Map<String, dynamic>> fetchPestDetectionResults() async {
    final uri = Uri.parse('https://yourapi.com/api/ai/pest-detection/results');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to fetch pest detection results');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pest Detection'),
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
              'Detect Pests in Your Crops',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  // Call the upload function here
                  await uploadPestImage(File(pickedFile.path));
                }
              },
              child: const Text('Select Image'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Call the fetch results function here
                await fetchPestDetectionResults();
              },
              child: const Text('Detect Pest'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying pest detection results
            const Text('Detection Results:', style: TextStyle(fontSize: 18)),
            FutureBuilder<Map<String, dynamic>>(
              future: fetchPestDetectionResults(), // Call the fetch function
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData) {
                  return const Text('No detection results available.');
                } else {
                  final results = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pest Detected: ${results['pest_detected']}'),
                      Text('Recommendations: ${results['recommendations']}'),
                    ],
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
