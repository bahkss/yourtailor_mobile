import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  final Map<String, String> userInfo;

  const UserInfoPage({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
         backgroundColor: const Color.fromRGBO(217, 183, 165, 1),
      ),
      backgroundColor: const Color.fromRGBO(217, 183, 165, 1),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: userInfo.entries
              .map(
                (entry) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8), // Semi-transparent white
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          '${entry.key}: ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(child: Text(entry.value)),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
