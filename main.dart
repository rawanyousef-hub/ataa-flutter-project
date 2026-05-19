import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const VolunteerApp());
}

class VolunteerApp extends StatelessWidget {
  const VolunteerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ataa',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}
