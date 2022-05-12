import 'package:connectionary/model/member_record.dart';

import '../boxes/boxes.dart';

class MemberRecordRepository {
  Future addRecord(MemberRecord memberRecord) async {
    final box = Boxes.getMemberRecords();
    box.add(MemberRecord.create(
      calledName: memberRecord.calledName,
      fullName: memberRecord.fullName,
      furigana: memberRecord.furigana,
      age: memberRecord.age,
      gender: memberRecord.gender,
      bloodType: memberRecord.bloodType,
      currentLocation: memberRecord.currentLocation,
      favoriteColor: memberRecord.favoriteColor,
      freeMemo: memberRecord.freeMemo,
    ));
  }

  void deleteRecord(MemberRecord memberRecord) {
    memberRecord.delete();
  }

  Future updateRecord(MemberRecord oldRecord, MemberRecord newRecord) async {
    final box = Boxes.getMemberRecords();
    box.put(
      oldRecord.key,
      oldRecord.copyWith(
        calledName: newRecord.calledName,
        fullName: newRecord.fullName,
        furigana: newRecord.furigana,
        age: newRecord.age,
        gender: newRecord.gender,
        bloodType: newRecord.bloodType,
        currentLocation: newRecord.currentLocation,
        favoriteColor: newRecord.favoriteColor,
        freeMemo: newRecord.freeMemo,
      ),
    );
  }
}
