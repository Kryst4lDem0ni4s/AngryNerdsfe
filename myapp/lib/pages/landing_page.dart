import 'package:flutter/material.dart';
import 'language_selection_2.dart';
import 'package:myapp/pages/login_page.dart'; // Import LoginPage


import 'package:myapp/widgets/base_layout.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      bottomNavigationBar: null,
      child: Scaffold(
        backgroundColor: Colors.lightGreen[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/images/kisan_dwaar_logo-removebg.png'),
              const SizedBox(height: 5),
              const Text(
                '"खेती आशा का पेशा है।"',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LanguageSelectionPage2(),
                  ),
                );
              },
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Icon(Icons.subdirectory_arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
