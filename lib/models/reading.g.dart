// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReadingAdapter extends TypeAdapter<Reading> {
  @override
  final int typeId = 0;

  @override
  Reading read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Reading(
      systolic: fields[0] as int,
      diastolic: fields[1] as int,
      dateTime: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Reading obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.systolic)
      ..writeByte(1)
      ..write(obj.diastolic)
      ..writeByte(2)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReadingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
