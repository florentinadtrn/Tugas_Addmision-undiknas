import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://undiknas.ac.id/wp-content/uploads/2023/04/UNDIKNAS-COLOR-768x768.pnghttps://undiknas.ac.id/wp-content/uploads/2023/04/UNDIKNAS-COLOR-768x768.png'),
           ),
            // Email TextField
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 16),
            // Password TextField
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 24),
            // Login Button
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            const SizedBox(height: 24),
            // New Student and Forgot Password Buttons
            TextButton(
              onPressed: () {},
              child: const Text('Mahasiswa Baru? Klik disini'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Lupa password'),
            ),
            const SizedBox(height: 16),
            // Language Change Flags
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/us_flag.png', width: 30),
                const SizedBox(width: 10),
                Image.asset('assets/indo_flag.png', width: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
