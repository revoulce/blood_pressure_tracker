import 'package:flutter/material.dart';
import '../models/reading.dart';

class AppSate extends ChangeNotifier {
  final List<Reading> _readings = [];

  List<Reading> get readings => _readings;

  void addReading(Reading reading) {
    _readings.insert(0, reading);
    notifyListeners();
  }
}
