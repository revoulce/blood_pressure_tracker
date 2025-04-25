import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Blood Pressure Tracker'),),
      body: const Center(
        child: Text('No reading yet.'),
      ),
    );
  }
}
