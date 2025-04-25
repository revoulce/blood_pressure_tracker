import 'package:hive/hive.dart';

part 'reading.g.dart';

@HiveType(typeId: 0)
class Reading {
  @HiveField(0)
  final int systolic;

  @HiveField(1)
  final int diastolic;

  @HiveField(2)
  final DateTime dateTime;

  Reading({
    required this.systolic,
    required this.diastolic,
    required this.dateTime,
  });
}
