import 'package:flutter/material.dart';
import 'remote_sensing_page.dart'; // Import the remote sensing page
import 'ai_history_page.dart'; // Import the AI history page
import 're_run_analysis_page.dart'; // Import the re-run analysis page
import 'queue_page.dart'; // Import the queue page
import 'schedule_page.dart'; // Import the schedule page

class AggregationPage extends StatelessWidget {
  const AggregationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aggregation Services'),
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
              'Market Forecasting & Trends:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RemoteSensingPage()),
                );
              },
              child: const Text('Go to Remote Sensing'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AIHistoryPage()),
                );
              },
              child: const Text('View AI History'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReRunAnalysisPage()),
                );
              },
              child: const Text('Re-run Analysis'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const QueuePage()),
                );
              },
              child: const Text('Add to Queue'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SchedulePage()),
                );
              },
              child: const Text('Schedule Task'),
            ),
            const SizedBox(height: 20),
            // Placeholder for displaying results
            const Text('Available Services:', style: TextStyle(fontSize: 18)),
            // Add a ListView or similar widget to display results
          ],
        ),
      ),
    );
  }
}
