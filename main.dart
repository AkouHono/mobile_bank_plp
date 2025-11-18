import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY flutter assignment',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends  StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔹 Title Bar at the top
      appBar: AppBar(
        title: const Text('Mobile_bank_login'),
        centerTitle: true,
      ),

      // 🔹 Body with Simple UI + Login Layout
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ==============================
            // 1. SIMPLE USER INTERFACE PART
            // ==============================
            const Text(
              'Welcome Screen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            // Styled Container with Welcome Message
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.blueAccent),
              ),
              child: const Center(
                child: Text(
                  'Welcome to My First Flutter App!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // ElevatedButton printing to console
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // This prints in the debug console
                  print('Button Clicked!');
                },
                child: const Text('Click Me'),
              ),
            ),

            const SizedBox(height: 16),

            // Image from the internet
            Center(
              child: Column(
                children: [
                  const Text(
                    'Nice Flutter Image:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            const Divider(thickness: 2),
            const SizedBox(height: 10),

            // ==============================
            // 2. LOGIN LAYOUT PART
            // ==============================
            const Text(
              'Login Screen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            // Using Column for input fields
            const Text(
              'Username',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your username',
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Password',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
              obscureText: true,
            ),

            const SizedBox(height: 16),

            // Row for Login & Register buttons side by side
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      print('Login button pressed');
                    },
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      print('Register button pressed');
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            const Text(
              'Tip: Please fill in your username and password, then press Login or Register.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}