import 'package:flutter/material.dart';
import 'resource_optimization_page.dart'; // Import the resource optimization page
import 'transport_route_page.dart'; // Import the transport route page

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
                  MaterialPageRoute(builder: (context) => const ResourceOptimizationPage()),
                );
              },
              child: const Text('Go to Resource Optimization'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TransportRoutePage()),
                );
              },
              child: const Text('Go to Transport Route'),
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
