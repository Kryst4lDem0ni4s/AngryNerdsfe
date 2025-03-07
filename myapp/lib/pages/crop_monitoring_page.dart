import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // Import http package
import 'dart:convert'; // Import dart:convert for JSON decoding
// Import http package
// Import dart:convert for JSON decoding

import 'dart:io';

Future<void> uploadCropImages(List<File> images) async {
  final uri = Uri.parse('https://yourapi.com/api/ai/crop-monitoring');
  final request = http.MultipartRequest('POST', uri);
  for (var image in images) {
    request.files.add(await http.MultipartFile.fromPath('images', image.path));
  }
  final response = await request.send();
  if (response.statusCode != 200) {
    throw Exception('Failed to upload images');
  }

  // final uri = Uri.parse('https://yourapi.com/api/ai/crop-monitoring');
  // final request = http.MultipartRequest('POST', uri);
  // for (var image in images) {
  //   request.files.add(await http.MultipartFile.fromPath('images', image.path));
  // }
  // final response = await request.send();
  // if (response.statusCode != 200) {
  //   throw Exception('Failed to upload images');
  // }
}

// import 'login_page.dart';

Future<Map<String, dynamic>> fetchAnalysisResults(String analysisId) async {
  final uri = Uri.parse('https://yourapi.com/api/ai/crop-monitoring/results/$analysisId');
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch analysis results');
  }

}

class CropMonitoringPage extends StatelessWidget {
  final String analysisId; // Add analysisId as a parameter

  const CropMonitoringPage({Key? key, required this.analysisId}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crop Monitoring'),
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
              'Monitoring Results:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            FutureBuilder<Map<String, dynamic>>(
              future: fetchAnalysisResults(analysisId), // Use dynamic analysisId
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData) {
                  return const Text('No analysis results available.');
                } else {
                  final results = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Health Score: ${results['health_score']}'),
                      Text('Disease Detected: ${results['disease_detected']}'),
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
