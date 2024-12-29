import 'package:flutter/material.dart';
import 'admin_info_page.dart';
import 'edit_admin_info.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  Map<String, String> adminInfo = {
    'Admin Name': 'Suraya',
    'gender': 'Female',
    'Email': 'suraya@gmail.com',
    'Phone': '011-299-4444',
    'Dob': '1 January 1870',
    'Address': 'Villa Suraya Richman Street',
  };

  // Method to update the admin information
  void updateAdminInfo(Map<String, String> updatedInfo) {
    setState(() {
      adminInfo = updatedInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
        backgroundColor: const Color.fromRGBO(217, 183, 165, 1),
      ),
      backgroundColor: const Color.fromRGBO(217, 183, 165, 1),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
            'assets/123.png',
           ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the AdminInfoPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminInfoPage(adminInfo: adminInfo),
                  ),
                );
              },
              child: const Text('View Admin Info'),
            ),
             const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () async {
                // Navigate to EditAdminInfoPage and wait for the updated admin info
                final updatedInfo = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditAdminInfoPage(adminInfo: adminInfo),
                  ),
                );
                if (updatedInfo != null) {
                  updateAdminInfo(updatedInfo); // Update the state with new data
                }
              },
              child: const Text('Edit Admin Info'),
            ),
          ],
        ),
      ),
    );
  }
}
