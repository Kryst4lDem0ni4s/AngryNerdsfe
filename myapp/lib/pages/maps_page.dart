import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Import Google Maps package

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps'),
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
              'View Your Fields on the Map',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to display the map will be implemented here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Map display functionality coming soon!'),
                  ),
                );
              },
              child: const Text('Show Map'),
            ),

            const SizedBox(height: 20),
            // Placeholder for displaying map results
            const Text('Map View:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Expanded(
              child: GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(0, 0), // Set initial position
                  zoom: 2, // Set initial zoom level
                ),
                markers: Set<Marker>(), // Add markers here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
