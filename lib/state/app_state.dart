import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/reading.dart';

class AppSate extends ChangeNotifier {
  final Box<Reading> _box = Hive.box<Reading>('readings');

  List<Reading> get readings => _box.values.toList().reversed.toList();

  void addReading(Reading reading) {
    _box.add(reading);
    notifyListeners();
  }
}
