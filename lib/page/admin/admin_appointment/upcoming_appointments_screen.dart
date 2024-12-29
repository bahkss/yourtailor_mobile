// upcoming_appointments_screen.dart
import 'package:flutter/material.dart';

class UpcomingAppointmentsScreen extends StatelessWidget {
  final List<Map<String, String>> upcomingAppointments = [
    {
      'Date': '14/12/2024',
      'Time': '2pm',
      'Customer’s Name': 'Ayu Natasya',
      'Service’s': 'Baju Kurung'
    },
    {
      'Date': '14/12/2024',
      'Time': '5pm',
      'Customer’s Name': 'Aina Abdullah',
      'Service’s': 'Baju Kurung'
    },
  ];

UpcomingAppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDFC5B0),
        elevation: 0,
        title: const Text(
          'Upcoming Appointment Record',
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
        child: ListView.builder(
          itemCount: upcomingAppointments.length,
          itemBuilder: (context, index) {
            final appointment = upcomingAppointments[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAD6C5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: appointment.entries.map((entry) {
                    return Text(
                      '${entry.key} : ${entry.value}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Serif',
                      ),
                    );
                  }).toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
