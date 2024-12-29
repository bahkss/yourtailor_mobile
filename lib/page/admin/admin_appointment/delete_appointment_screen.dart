// delete_appointment_screen.dart
import 'package:flutter/material.dart';

class DeleteAppointmentScreen extends StatefulWidget {
  const DeleteAppointmentScreen({super.key});

  @override
  _DeleteAppointmentScreenState createState() => _DeleteAppointmentScreenState();
}

class _DeleteAppointmentScreenState extends State<DeleteAppointmentScreen> {
  List<Map<String, String>> appointments = [
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

  void _deleteAppointment(int index) {
    setState(() {
      appointments.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDFC5B0),
        elevation: 0,
        title: const Text(
          'Delete Appointment Record',
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
          itemCount: appointments.length,
          itemBuilder: (context, index) {
            final appointment = appointments[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAD6C5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
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
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.black),
                      onPressed: () => _deleteAppointment(index),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
