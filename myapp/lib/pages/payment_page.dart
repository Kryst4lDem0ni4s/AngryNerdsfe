import 'package:flutter/material.dart';
import 'payment_status_page.dart'; // Import the PaymentStatusPage

import 'package:myapp/pages/payment_status_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Payment Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Card Number',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Expiration Date',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'CVV',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to payment status page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentStatusPage(paymentId: '12345'), // Replace with actual payment ID
                  ),
                );
              },

              child: const Text('Initiate Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
