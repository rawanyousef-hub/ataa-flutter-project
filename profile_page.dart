import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.person, size: 80, color: Colors.green),
            SizedBox(height: 20),
            Text('User Name: Volunteer User', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Email: user@example.com', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Registered Opportunities: 0', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
