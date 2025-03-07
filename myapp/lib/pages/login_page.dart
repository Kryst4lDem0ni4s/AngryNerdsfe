import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // Import http package
import 'dart:convert'; // Import for json encoding/decoding

import 'acc_creation.dart';
import 'forgot_password.dart'; // Ensure this import is correct
import 'home_page.dart'; // Ensure this import is correct

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController(); // Add email controller
  final TextEditingController passwordController = TextEditingController(); // Add password controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF139F57),
              Color(0xFF139F57),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                          'lib/images/kisan_dwaar_logo-removebg.png')),
                  const SizedBox(height: 20),
                  const Text(
                    'KISAN द्वार',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    controller: emailController, // Set controller for email field
                    decoration: InputDecoration(
                      labelText: 'ईमेल',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'कृपया ईमेल दर्ज करें';
                      }
                      if (!value.contains('@')) {
                        return 'कृपया एक मान्य ईमेल दर्ज करें';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController, // Set controller for password field
                    decoration: InputDecoration(
                      labelText: 'पासवर्ड',
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'कृपया पासवर्ड दर्ज करें';
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text('याद रखें'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // Prepare the API request
                        final response = await http.post(
                          Uri.parse('https://yourapi.com/api/auth/login'), // Replace with your API URL
                          headers: <String, String>{
                            'Content-Type': 'application/json; charset=UTF-8',
                          },
                          body: jsonEncode(<String, String>{
                            'email': emailController.text, // Use email controller
                            'password': passwordController.text, // Use password controller
                          }),
                        );

                        if (response.statusCode == 200) {
                          // If the server returns a 200 OK response, navigate to HomePage
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        } else {
                          // If the server did not return a 200 OK response, show an error message
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Login failed: ${response.body}')),
                          );
                        }
                      }
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 250, 210, 34),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text('लॉग इन करें'),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 25, 25),
                      ),
                    ),
                    child: const Text('पासवर्ड भूल गए?'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const AccCreation(title: 'Create an Account')),
                      );
                    },
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 25, 25),
                      ),
                    ),
                    child: const Text('कोई खाता नहीं है? खाता बनाएं'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
