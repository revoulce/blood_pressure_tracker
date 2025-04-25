import 'package:flutter/material.dart';
import '../models/reading.dart';
import 'package:intl/intl.dart';

class ReadingCard extends StatelessWidget {
  final Reading reading;

  const ReadingCard({super.key, required this.reading});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat(
      'dd MMM yyyy, HH:mm',
    ).format(reading.dateTime);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          "Systolic: ${reading.systolic}  |  Diastolic: ${reading.diastolic}",
        ),
        subtitle: Text(formattedDate),
      ),
    );
  }
}
