import 'package:flutter/material.dart';
import 'package:yourtailor/page/admin/admin_appointment/PaymentRecordScreen.dart';
import 'package:yourtailor/page/admin/admin_appointment/delete_appointment_screen.dart';
import 'package:yourtailor/page/admin/admin_appointment/past_appointment_screen.dart';
import 'package:yourtailor/page/admin/admin_appointment/upcoming_appointments_screen.dart';

class AppointmentRecordScreen extends StatelessWidget {
  const AppointmentRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD2A08D),
        elevation: 0,
        title: const Text(
          'Appointment Record',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color(0xFFDFC5B0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            // Logo Section
            Image.asset(
              '123.png',///hii qeela
              width: MediaQuery.of(context).size.width * 0.3, // 80% of the screen width
              height: MediaQuery.of(context).size.height * 0.2, // 40% of the screen height
              fit: BoxFit.contain, // Scales while preserving aspect ratio
            ),
            const SizedBox(height: 40),
            // Menu Options Section
            Expanded(
              child: ListView(
                children: [
                  buildMenuItem(context, 'View Upcoming Appointments',() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UpcomingAppointmentsScreen()),
                    );
                  }),

                  buildMenuItem(context, 'Past Appointments', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PastAppointmentScreen()),
                    );
                  }), 

                  buildMenuItem(context, 'Delete Past Appointments', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DeleteAppointmentScreen()),
                    );
                  }),

                  buildMenuItem(context, 'Payment Records', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentRecordsScreen()),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
//hiiii
  Widget buildMenuItem(BuildContext context, String title, [VoidCallback? onTap]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEAD6C5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: onTap ?? () {},
        ),
      ),
    );
  }
}
