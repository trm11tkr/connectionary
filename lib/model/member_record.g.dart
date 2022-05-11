// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MemberRecordAdapter extends TypeAdapter<MemberRecord> {
  @override
  final int typeId = 1;

  @override
  MemberRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MemberRecord(
      calledName: fields[0] as String,
      fullName: fields[1] as String,
      furigana: fields[2] as String?,
      age: fields[3] as int?,
      gender: fields[4] as String?,
      bloodType: fields[5] as String?,
      currentLocation: fields[6] as String?,
      favorite: fields[7] == null ? false : fields[7] as bool,
      favoriteColor: fields[8] as int?,
      createdAt: fields[9] as DateTime,
      freeMemo: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MemberRecord obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.calledName)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.furigana)
      ..writeByte(3)
      ..write(obj.age)
      ..writeByte(4)
      ..write(obj.gender)
      ..writeByte(5)
      ..write(obj.bloodType)
      ..writeByte(6)
      ..write(obj.currentLocation)
      ..writeByte(7)
      ..write(obj.favorite)
      ..writeByte(8)
      ..write(obj.favoriteColor)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.freeMemo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
