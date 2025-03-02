import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewOrderPage extends StatelessWidget {
  final TextEditingController itemIdController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  NewOrderPage({Key? key}) : super(key: key);

  Future<void> createOrder() async {
    final response = await http.post(
      Uri.parse('https://yourapi.com/api/orders'), // Replace with your API URL
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'itemId': itemIdController.text,
        'quantity': int.parse(quantityController.text),
      }),
    );

    if (response.statusCode == 201) {
      // Order created successfully
      // Navigate back or show a success message
    } else {
      throw Exception('Failed to create order');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: itemIdController,
              decoration: const InputDecoration(labelText: 'Item ID'),
            ),
            TextField(
              controller: quantityController,
              decoration: const InputDecoration(labelText: 'Quantity'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                createOrder();
              },
              child: const Text('Create Order'),
            ),
          ],
        ),
      ),
    );
  }
}
