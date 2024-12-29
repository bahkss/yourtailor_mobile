import 'package:flutter/material.dart';

class AdminProfile extends StatefulWidget {
  final String name;
  final String role;
  final String email;
  final String gender;
  final String address;
  final String phoneNumber;
  final String dob;

  const AdminProfile({super.key, 
    required this.name,
    required this.role,
    required this.email,
    required this.gender,
    required this.address,
    required this.phoneNumber,
    required this.dob,
  });

  @override
  _AdminProfileState createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  late String name;
  late String role;
  late String email;
  late String gender;
  late String address;
  late String phoneNumber;
  late String dob;

  @override
  void initState() {
    super.initState();
    name = widget.name;
    role = widget.role;
    email = widget.email;
    gender = widget.gender;
    address = widget.address;
    phoneNumber = widget.phoneNumber;
    dob = widget.dob;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Admin Info'),
        backgroundColor: const Color(0xFFD9B7A5),
      ),
      backgroundColor: const Color(0xFFD9B7A5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Basic Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            buildTextField("Name", name),
            const SizedBox(height: 10),
            buildTextField("Role", role),
            const SizedBox(height: 10),
            buildTextField("Gender", gender),
            const SizedBox(height: 10),
            buildTextField("Date of Birth", dob),
            const SizedBox(height: 20),
            const Text(
              "Contact Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            buildTextField("Phone Number", phoneNumber),
            const SizedBox(height: 10),
            buildTextField("Email", email),
            const SizedBox(height: 10),
            buildTextField("Address", address, maxLines: 3),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, String value, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: TextEditingController(text: value),
          maxLines: maxLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          style: const TextStyle(color: Colors.black), // Set text color to black
          enabled: false, // Make the fields non-editable as it's for view-only
        ),
      ],
    );
  }
}
