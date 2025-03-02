import 'package:flutter/material.dart';

class PaymentStatusPage extends StatelessWidget {
  final String paymentId;

  const PaymentStatusPage({Key? key, required this.paymentId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payment ID: $paymentId', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            const Text('Status: Pending', style: TextStyle(fontSize: 18)), // Replace with actual status
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              child: const Text('Back to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
