import 'package:blood_pressure_tracker/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/app_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppSate(),
      child: const BloodPressureApp(),
    ),
  );
}

class BloodPressureApp extends StatelessWidget {
  const BloodPressureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Pressure Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.teal,
      ),
      home: const HomeScreen(),
    );
  }
}
