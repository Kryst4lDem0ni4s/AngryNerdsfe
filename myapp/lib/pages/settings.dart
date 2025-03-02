import 'package:flutter/material.dart';
import 'home_page.dart'; // Import HomePage
import 'language_selection_2.dart'; // Import Language Selection Page

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 16.0),
            const CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('assets/images/placeholder.png'),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '<Name>',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit Profile'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Edit Profile Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()), // Replace with actual Edit Profile page
                );
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'General',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 8.0),
            SwitchListTile(
              title: const Text('Mode'),
              subtitle: const Text('Dark & Light'),
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Language Selection Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LanguageSelectionPage2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to About Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()), // Replace with actual About page
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.warning_amber_rounded),
              title: const Text('Terms & Conditions'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Terms & Conditions Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()), // Replace with actual Terms & Conditions page
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Privacy Policy Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()), // Replace with actual Privacy Policy page
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rate This App'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Rate This App Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()), // Replace with actual Rate This App page
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share This App'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Share This App Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()), // Replace with actual Share This App page
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
