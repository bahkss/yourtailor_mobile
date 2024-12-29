// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
  
     
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:yourtailor/page/admin/admin_login.dart';
import 'package:yourtailor/page/user/user_login.dart';


void main(List<String> args) {runApp(const YourTailorApp());
  
} 
  


class YourTailorApp extends StatelessWidget {
  const YourTailorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YourTailor',
      theme: ThemeData(
        primaryColor: Colors.brown,
        hintColor: Colors.brown[300],
      ),
      home: const AuthenticationScreen(),
    );
  }
}

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFC5B0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'YourTailor',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.brown[800],
              ),
            ),
            const SizedBox(height: 40),
            // Admin Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AdminLoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.brown,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text('Admin'),
            ),
            const SizedBox(height: 20),
            // Customer Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserLoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.brown,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text('Customer'),
            ),
          ],
        ),
      ),
    );
  }
}
