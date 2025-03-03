import 'package:flutter/material.dart';

class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Methods'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Credit/Debit Card'),
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Net Banking'),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Wallet'),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('UPI'),
          ),
        ],
      ),
    );
  }
}
