import 'package:flutter/material.dart';

class PaymentHistoryPage extends StatelessWidget {
  const PaymentHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment History'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with actual number of payments
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Payment #${index + 1}'),
            subtitle: const Text('Status: Completed'), // Replace with actual status
            trailing: const Text('\$XX.XX'), // Replace with actual amount
            onTap: () {
              // Navigate to payment details page
            },
          );
        },
      ),
    );
  }
}
