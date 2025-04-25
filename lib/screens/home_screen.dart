import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/reading.dart';
import '../state/app_state.dart';
import '../widgets/reading_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showAddDialog(BuildContext context) {
    final systolicController = TextEditingController();
    final diastolicController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Add New Reading", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            TextField(
              controller: systolicController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Systolic (Upper)"),
            ),
            TextField(
              controller: diastolicController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Diastolic (Lower)"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                final systolic = int.tryParse(systolicController.text);
                final diastolic = int.tryParse(diastolicController.text);
                if (systolic != null && diastolic != null) {
                  Provider.of<AppSate>(context, listen: false).addReading(
                    Reading(
                      systolic: systolic,
                      diastolic: diastolic,
                      dateTime: DateTime.now(),
                    ),
                  );
                  Navigator.pop(context);
                }
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final readings = context.watch<AppSate>().readings;

    return Scaffold(
      appBar: AppBar(title: const Text('Blood Pressure Tracker')),
      body: readings.isEmpty
          ? const Center(child: Text("No readings yet."))
          : ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: readings.length,
        itemBuilder: (_, i) => ReadingCard(reading: readings[i]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
